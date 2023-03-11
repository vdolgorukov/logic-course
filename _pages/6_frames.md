---
title: Шкалы Крипке
category: Jekyll
layout: post
---
  
  
![Model](/logic-course/docs/assets/images/Frames.pdf)

**Определение**. Пусть $M = (W, R, V)$ – модель Крипке, *шкалой Крипке* будем называть  пару $(W, R)$.
То есть, шкала это модель Крипке без оценки. Если $F = (W, R)$ – шкала, то модель можно записать вот так $M = (F, V)$.

**Определение**. Дана модель $M = (F, V)$, будем говорить, что $M$ – *модель над шкалой* $F$.

**Определение**. Будем говорить, что формула $\varphi$ *общезначима в шкале* $F$ (обозначение: $F \models \varphi$), если для любой модели $M$ над $F$: $M \models \varphi$. То есть, при любой оценке $V$ верно, что $(F, V) \models \varphi$.  

Сравним определения истинности в отмеченном модели, истинности в модели и общезначимости в шкале. Пусть дана модель $M = (W, R, V)$. Истинность в отмеченной модели можно записать так:  
- $M, x \models \varphi$
- $(F, V), x \models \varphi$
– $(W, R, V), x \models \varphi$
	
Истинность в модели можно записать так:
- $M \models \varphi$
- $\forall x \in W$: $M, x \models \varphi$
- $\forall x \in W$: $(F, V), x \models \varphi$
- $\forall x \in W$: $(W, R, V), x \models \varphi$

Общезначимость в шкале можно записать так:
- $F \models \varphi$
- $\forall M$ над $F$: $M \models \varphi$
- $\forall M$ над $F$ $\forall x \in W$: $M, x \models \varphi$
- $\forall V$: $(W, R, V) \models \varphi$
- $\forall V$ $\forall x \in W$: $(W, R, V), x \models \varphi$ 	

**Определение**. Будем говорить, что формула является *общезначимой*, если она общезначима в любой модели, то есть, $\forall M: M \models \varphi$. 

**Упражнение**. Докажите, что определение общезначимости можно эквивалентным образом переписать так: формула $\varphi$ общезначима, если для произвольной шкалы $F$ верно, что $F \models \varphi$ 	

**Упражнение**. Приведите пример отмеченной модели $M = (F, V)$ и формулы $\varphi$ такой, что
- $M, x \models \varphi$, но  $M \not \models \varphi$
- $M \models \varphi$, но $F \not \models \varphi$
- $F \models \varphi$, но $\not \models \varphi$

**Упражнение**. Приведите пример модели $M$, в которой ровно 4 мира, такой, что $M \models \Diamond \Box p \wedge  \Diamond \Box \neg p$.

**Упражнение**. Укажите в каких шкалах (на рис. ниже) общезначимы следующие формулы?
1. $\Box \bot$
2. $\Box \bot \vee \Diamond \Box \bot$
3. $\Box p \to p$
4. $\Diamond \Box p \to p$
5. $\Box p \to \Diamond p $
6. $\Diamond p \to \Box p$
7. $\Diamond p \equiv \Box p$	
8. $p \equiv \Box \Box p$
9. $\Diamond (\Box p \to p)$

\begin{center}
\begin{tikzpicture}[modal]
		\node[point] (1) [label=below:{$F_1$}]{};
		\node[point] (2) [right of=1] [label=below:{$F_2$}]{};
		\path[reflexive]   (2) edge (2);
		\node[point] (13) [right of=2][label=below:{$F_3$}]{};
		\node[point] (23) [above of=13] []{};
		\path[->]    (13) edge  (23);
		\node[point] (14) [right of=13] [label=below:{$F_4$}]{};
		\node[point] (24) [above of=14] []{};
		\path[->]    (14) edge  (24);
		\path[reflexive]   (24) edge (24);

		\node[point] (15) [right of=14] [label=below:{$F_5$}]{};
		\node[point] (25) [above of=15] []{};
		\path[->]    (15) edge  (25);
		\path[reflexive]    (15) edge  (15);

		\node[point] (16) [right of=15] [label=below:{$F_6$}]{};
		\node[point] (26) [above of=16] []{};
		\path[->]    (16) edge  (26);
		\path[reflexive]    (16) edge  (16);
		\path[reflexive]    (26) edge  (26);

		\node[point] (17) [right of=16] [label=below:{$F_7$}]{};
		\node[point] (27) [above of=17] []{};
		\path[->]    (17) edge[bend right]    (27);
		\path[->]    (27) edge[bend right]    (17);
	

		\node[point] (18) [right of=17][label=below:{$F_8$}]{};
		\node[point] (28) [above of=18] []{};
		\path[->]    (18) edge[bend right]    (28);
		\path[->]    (28) edge[bend right]    (18);
		\path[reflexive]    (18) edge  (18);

		\node[point] (19) [right of=18][label=below:{$F_9$}]{};
		\node[point] (29) [above of=19] []{};
		\path[->]    (19) edge[bend right]    (29);
		\path[->]    (29) edge[bend right]    (19);
		\path[reflexive]    (19) edge  (19);
		\path[reflexive]    (29) edge  (29);
\end{tikzpicture}


**Утверждение**. Пусть, $(W,R)$ – шкала Крипке, тогда
$$(W,R) \models \Box p \to p \iff \forall x \in W (xRx)$$		

*Доказательство*. 

($\Rightarrow$) Докажем по контрапозиции. Допустим, что найдется такой мир , что $\neg (xRx)$. Наша задача подобрать оценку $V(p)$ такую, что   $(W,R,V), x \not \models \Box p \to p$. То есть, $(W,R,V), x  \models \Box p$  и $(W,R,V), x  \not \models  p$. Докажем, что подойдет такая оценка $V(p)= W - \{x\}$.

($\Leftarrow$) 

$\forall x \in W \; (xRx)$ 

\fh \fw{M} \; $M = (W, R, V) & $\rhd \; M \models \Box p \to p$ 

\fa \fh \fw{x} \; x \in W & $\rhd \; M, x \models \Box p \to p$ 

\fa \fa \fh M, x \models \Box p & $\rhd \; M, x \models p$ 

\fa \fa \fa  M, x \models p & из 1 и 4 

$\fa \fa M, x \models \Box p \to p $

$\fa \forall x \in W: M, x \models \Box p \to p $

$\fa M \models \Box p \to p $

$\forall M  = (W, R, V) : M \models \Box p \to p $

$(W, R) \models \Box p \to p$



симметричность

**Утверждение**. Пусть, $(W,R)$ – шкала Крипке, тогда
$$(W,R) \models \Box p \to \Box \Box p \iff \forall x \forall y \forall z ((xRy \wedge yRz) \Rightarrow xRz)$$		

[//]: <> (сериальность евклидовость направленность)

**Упражнение**.  Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models \Box \Box p \to p \Leftrightarrow \forall x \forall y ( xRy \to \exists z (xRz  \wedge zRy))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models p \to \Box(\Diamond p \to p) \Leftrightarrow \forall x \forall y \forall z ((xRy \wedge yRz) \to (x=y \vee y=z))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models (p \wedge \Box p) \to \Box \Box p \Leftrightarrow \forall x \forall y \forall z ((xRy \wedge yRz) \to (x=z \vee xRz))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models (\Diamond p \wedge \Diamond q) \to \Diamond (\Diamond p \wedge \Diamond q) \Leftrightarrow \forall x \forall y \forall z( (xRy \wedge xRz) \to \exists w (xRw \wedge wRy \wedge wRz))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models \Diamond (\Diamond p \wedge \Box q) \to \Box (\Diamond p \vee \Box q) \Leftrightarrow \forall x \forall y_1 \forall y_2 ( (xRy_1 \wedge xRy_2) \to ( \forall z( y_1Rz \to y_2Rz) \vee \forall z( y_2Rz \to y_1Rz) ))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models (p \wedge \Diamond \Box p) \to \Box p \Leftrightarrow  \forall x \forall y \forall z( (xRy \wedge x \not =y \wedge xRz) \to zRy)$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models \Box (\Box p \to q) \vee \Box  (\Box q \to p)$ ⇔ $\forall x \forall y \forall z ( (xRy \wedge xRz) \to (yRz \vee zRy))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, $Alt_n := \bigwedge \limits_{i=0}^n  \Diamond (p_i \wedge \bigwedge \limits_{i \not = j} \neg p_j)$ докажите, что 
$$(W, R) \models Alt_n \Leftrightarrow  \forall x \in W: |R(x)| \leq n$$ 
