---
title: Аспекты неклассических логик (упражнения)
category: Jekyll
layout: post
---

## Модальные исчисления

**Упражнение 1**. Какие из следующих принципов следует принять или отвергнуть (с точки зрения интуиции):
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

**Упражнение 2** (\*). Какие из следующих принципов следует принять или отвергнуть (с точки зрения интуиции):
- $\Box (\Box p \to p)$
- $\Box (\Box p \to p) \to \Box p$
- $\Box p \to \Box \Diamond \Box p$
- $\Diamond \Box \Diamond p \to \Diamond p$


**Пример**  $\vdash \Box (p \wedge q) \to \Box q$   
 1. $(p \wedge q) \to q$ – КЛВ  
 2. $\Box ((p \wedge q) \to \Box q)$ – G 1 
 3. $\Box ((p \wedge q) \to \Box q) \to (\Box (p \wedge q) \to \Box q)$ – (K) 
 4. $\Box (p \wedge q) \to \Box q$ – MP 1, 2

**Упражнение 3**. Докажите в исчислении $K$ следующие теоремы:
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

**Упражнение 4**. Докажите в исчислении $K$ следующие теоремы:
1. $(\Box p \to \Diamond (q \to r)) \to (\Box q \to (\Box p \to \Diamond r))$
2. $(\Box p \wedge \Diamond (q \to r)) \to (\Box (p \to q ) \to  \Diamond (p \wedge r))$

**Вопрос**. Какие формулы истинны в отмеченной модели $M, w$?
<details><summary> $\Diamond p$ </summary> $$M, w \models \Diamond p$$ </details>
<details><summary> $\Box p$ </summary>  $$M, w \not \models \Box p$$  </details>
<details><summary> $\Diamond \Box p$ </summary>  $$M, w \models \Diamond \Box p$$ </details>