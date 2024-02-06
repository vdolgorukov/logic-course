module Main where

import Prelude

import Data.Array (foldr)
import Data.CodePoint.Unicode (isAlpha)
import Data.Either (Either(..))
import Data.Map as M
import Data.Maybe (Maybe(..))
import Data.Set as S
import Data.Traversable (traverse)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Exception as Exception
import Effect.Ref as Ref
import Halogen as H
import Halogen.Aff (runHalogenAff)
import Halogen.HTML as HH
import Halogen.VDom.Driver (runUI)
import Parsing (Parser, runParser)
import Parsing.Combinators (sepEndBy1)
import Parsing.Expr as Expr
import Parsing.String as P
import Parsing.String.Basic (skipSpaces, takeWhile1)
import Web.DOM.Element as E
import Web.DOM.MutationObserver (mutationObserver, observe, takeRecords)
import Web.DOM.MutationRecord as MR
import Web.DOM.Node (textContent)
import Web.HTML (HTMLElement)
import Web.HTML.HTMLElement (toNode)

foreign import define :: String -> (HTMLElement -> Effect Unit) -> Effect Unit

main :: Effect Unit
main = define "modal-task" $ \el -> do
  ref <- Ref.new { model: Single "EMPTY", props: M.empty, formula: Var "EMPTY" }
  observer <- mutationObserver (\records _ -> runTaskComponent el ref records)
  observe (toNode el) { attributes: true, characterData: true } observer
  takeRecords observer >>= runTaskComponent el ref

data Model = Single String | Overlay Model Model | Connect Model Model

derive instance eqModel :: Eq Model

word :: Parser String String
word = takeWhile1 isAlpha

modelParser :: Parser String Model
modelParser = Expr.buildExprParser
  [ [ Expr.Infix (P.char '*' $> Connect) Expr.AssocRight ]
  , [ Expr.Infix (P.char '+' $> Overlay) Expr.AssocRight ]
  ] (Single <$> word)

data Formula
  = Var String
  | Not Formula
  | LAnd Formula Formula
  | LOr Formula Formula
  | LTo Formula Formula
  | Box Formula
  | Diamond Formula

derive instance eqFormula :: Eq Formula

formulaParser :: Parser String Formula
formulaParser = Expr.buildExprParser
  [ [ Expr.Prefix (P.string "\\neg" $> Not)
    , Expr.Prefix (P.string "\\box" $> Box)
    , Expr.Prefix (P.string "\\Diamond" $> Diamond) ]
  , [ Expr.Infix (P.string "\\land" $> LAnd) Expr.AssocRight ]
  , [ Expr.Infix (P.string "\\lor" $> LOr) Expr.AssocRight ]
  , [ Expr.Infix (P.string "\\to" $> LTo) Expr.AssocRight ]
  ] (Var <$> word)

data TaskUpdate
  = NewModel Model
  | NewProp { name :: String, sat :: S.Set String }
  | RemoveProp String
  | NewFormula Formula

satParser :: Parser String (S.Set String)
satParser = S.fromFoldable
  <$> (skipSpaces *> sepEndBy1 word (skipSpaces *> P.char ',' *> skipSpaces))

fromMutation :: MR.MutationRecord -> Effect TaskUpdate
fromMutation record = do
  node <- MR.target record
  el <- case E.fromNode node of
    Just el -> pure el
    Nothing -> Exception.throw "target is not an element"
  MR.attributeName record >>= case _ of
    Just name@"worlds" -> E.getAttribute name el >>= case _ of
      Just worlds -> case runParser worlds modelParser of
        Left err -> Exception.throw (show err)
        Right ok -> pure (NewModel ok)
      Nothing -> Exception.throw "worlds attribute is missing"
    Just name -> E.getAttribute name el >>= case _ of
      Just worlds -> case runParser worlds satParser of
        Left err -> Exception.throw (show err)
        Right sat -> pure $ NewProp { name, sat }
      Nothing -> pure (RemoveProp name)
    Nothing -> do
      formula <- textContent node
      case runParser formula formulaParser of
        Left err -> Exception.throw (show err)
        Right ok -> pure (NewFormula ok)

type Task =
  { model :: Model
  , props :: M.Map String (S.Set String)
  , formula :: Formula
  }

updateTask :: TaskUpdate -> Task -> Task
updateTask upd t = case upd of
  NewModel m -> t { model = m }
  NewProp {name, sat} -> t { props = M.insert name sat t.props }
  RemoveProp name -> t { props = M.delete name t.props }
  NewFormula f -> t { formula = f }

runTaskComponent
  :: HTMLElement -> Ref.Ref Task -> Array MR.MutationRecord -> Effect Unit
runTaskComponent el ref records = do
  updates <- traverse fromMutation records
  { oldTask, newTask } <- flip Ref.modify' ref $ \oldTask ->
    let newTask = foldr updateTask oldTask updates
     in { state: newTask, value: { oldTask, newTask } }
  if newTask /= oldTask
    then runHalogenAff $ runUI (taskComponent newTask) unit el
    else pure unit

taskComponent
  :: forall query input output . Task -> H.Component query input output Aff
taskComponent task = H.mkComponent
  { initialState: const { worlds: S.empty, check: false }
  , render: render task
  , eval: H.mkEval H.defaultEval { handleAction = handleAction }
  }

type TaskProgress = { worlds :: S.Set String, check :: Boolean }

data Action = NewWorld String | RemoveWorld String | Check

handleAction
  :: forall output m. Action -> H.HalogenM TaskProgress Action () output m Unit
handleAction action = H.modify_ $ \p -> case action of
  NewWorld w -> p { worlds = S.insert w p.worlds }
  RemoveWorld w -> p { worlds = S.delete w p.worlds }
  Check -> p { check = true }

render :: forall m . Task -> TaskProgress -> H.ComponentHTML Action () m
render _ _ = HH.div [] [] -- TODO
