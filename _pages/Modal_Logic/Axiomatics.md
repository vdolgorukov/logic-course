---
title: Гильбертовские исчисления для модальной логики
category: Jekyll
layout: post
---

# Модальные исчисления

:blue_book: **Упражнение 1**. Какие из следующих принципов следует принять или отвергнуть (с точки зрения интуиции):
1. $\Box (p \wedge q) \leftrightarrow (\Box p \wedge \Box q)$
2. $\Box (p \to q) \to (\Box p \to \Box q)$
3. $(\Diamond p \wedge \Diamond q) \to \Diamond (p \wedge q)$
4. $\Box p \to p$
5. $\Box p \to \Diamond p$
6. $\neg \Box \bot$	
7. $\Box p \to \Box \Box p$
8. $p \to \Box \Diamond p$
9. $\Diamond p \to \Box \Diamond p$
10. $\Diamond \Box p \to \Box \Diamond p$

если модальный оператор \" $\Box \dots$ \" интерпретировать как
- (a) "необходимо, что ..."
- (b) "обязательно, что ..."
- (с) "всегда будет, что ..."
- (d) "агент $x$ знает, что ..."
- (e) "агент $x$ считает, что ..."
- (f) "существует доказательство, что..."
- (g) "хорошо, что ...."? 

Как будет читаться двойственный оператор $\Diamond p: = \neg \Box \neg p$ в каждом из этих случаев?

:blue_book: **Упражнение** (\*). Какие из следующих принципов следует принять или отвергнуть (с точки зрения интуиции):
- $\Box (\Box p \to p)$
- $\Box (\Box p \to p) \to \Box p$
- $\Box p \to \Box \Diamond \Box p$
- $\Diamond \Box \Diamond p \to \Diamond p$

## Минимальная модальная логика

> **Исчисление $K$** <a name="K"></a>
> 
> Аксиомные схемы:
> * ($Taut$) Все подстановочные примеры тавтологий КЛВ
> * ($K$) $\Box (\varphi \to \psi) \to (\Box \varphi \to \Box \psi)$
>
> Правило вывода:
>  
>  modus ponens	
>  G
{: .bq-with-class style="color:black"}

**Определение** Вывод 

**Пример**  $\vdash \Box (p \wedge q) \to \Box q$   
 1. $(p \wedge q) \to q$ – КЛВ  
 2. $\Box ((p \wedge q) \to \Box q)$ – G 1 
 3. $\Box ((p \wedge q) \to \Box q) \to (\Box (p \wedge q) \to \Box q)$ – (K) 
 4. $\Box (p \wedge q) \to \Box q$ – MP 1, 2

:blue_book: **Упражнение**. Докажите в исчислении $K$ следующие теоремы:
1. $\Box p \to \Box (p \vee q)$
2. $\Box (p \wedge q) \to (\Box p \wedge \Box q)$
3. $(\Box p \wedge \Box q) \to \Box (p \wedge q)$
4. $\Diamond (p \lor q) \leftrightarrow (\Diamond p \vee \Diamond q)$
5. $\Diamond (p \wedge q) \to \Diamond p$
6. $(\Box p \to \Diamond q) \leftrightarrow \Diamond (p \to q)$
7. $\Box (p \to q) \to (\Diamond p \to \Diamond q)$
8. $(\Diamond p \wedge \Box (p \to q)) \to \Diamond q$
9. $(\Box p \wedge \Diamond q) \to \Diamond (p \wedge q) $
10. $\Box (p \vee q) \to (\Diamond p \vee \Box q)$ 
11. $(\Diamond p \wedge \Box q) \to \Diamond(p \wedge q) $

:blue_book: **Упражнение**. Докажите в исчислении $K$ следующие теоремы:
1. $(\Box p \to \Diamond (q \to r)) \to (\Box q \to (\Box p \to \Diamond r))$
2. $(\Box p \wedge \Diamond (q \to r)) \to (\Box (p \to q ) \to  \Diamond (p \wedge r))$

:blue_book: **Упражнение**. Методом индукции докажите, что 
$\vdash_{K} \Box (\varphi_1 \wedge \dots \wedge \varphi_n) \equiv (\Box \varphi_1 \wedge \dots \wedge \Box \varphi_n)$ для любого $n \geq 2$


**Определение** Вывод из гипотез

## 15 традиционных модальных логик


| Название  | Аксиомная схема                  |
|-----------|----------------------------------|
| $(T)$     | $\Box p to p$                    |
| $(D)$     | $\Box p to \Diamond p$           |
| $(B)$     | $p \to \Box \Diamond p$          |
| $(4)$     | $p \to \Box \Box p$              |
| $(5)$     | $\Diamond p \to \Box \Diamond p$ |



:blue_book: **Упражнение**. Докажите в исчислении $KT$ следующие теоремы:
1. $\Box \Box p \to \Box p$
2. $\Box p \to \Diamond p$
3. $\neg \Box \bot$
4. $\Diamond (p \to \Box p)$

:blue_book: **Упражнение**. Докажите в исчислении $S4$ следующие теоремы:
1. $\Box \Box p \equiv \Box p$
2. $\Diamond \Diamond p \equiv \Diamond p$
3. $\Box^n p \equiv \Box p$[^1] 
4. $\Diamond^n p \equiv \Diamond p$
5. $\Box p \to \Box \Diamond \Box p $
6. $\Diamond \Box \Diamond p \to \Diamond p$
7. $\Box \Diamond \Box p \to \Box \Diamond p$
8. $\Box \Diamond \Box p \to \Diamond \Box p$
9. $\Diamond \Box p \to \Diamond \Box \Diamond p$

[^1]: Здесь степень означает, что оператор повторяется $n$ раз. Например, $\Box^3 \varphi:= \Box \Box \Box \varphi$.

# Литература и дополнительные материалы:
- [https://plato.stanford.edu/entries/logic-modal/](https://plato.stanford.edu/entries/logic-modal/)
- ["3 Months of Modal Logics"/ канал "Carneades.org"](https://www.youtube.com/playlist?list=PLz0n_SjOttTfP_liEHPNCzvESZsh5eirP)
- ["Modal Logic"/ канал "Attic Philosophy"](https://www.youtube.com/watch?v=_kZLnqsIuMo&list=PLwSlKSRwxX0qXTZKnIT7l4_YAIWpJcZJ9)
- [Курс "Неклассические логики" 2022 (Т.Л. Яворская, МИАН)](https://www.mathnet.ru/php/conference.phtml?option_lang=rus&eventID=31&confid=2080)
- Chellas B. Modal Logic: An Introduction. Cambridge: Cambridge University Press, 1980.
