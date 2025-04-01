---
title: Шкалы Крипке
category: Jekyll
layout: post
---

## Шкалы Крипке

<div id="quiz"></div>
<div id="results"></div>
<button id="submit">Проверить ответы</button>

<script src="/assets/js/quiz.js"></script>
    
**Определение 1**. Пусть $M = (W, R, V)$ – модель Крипке, *шкалой Крипке* будем называть  пару $(W, R)$.
То есть, шкала это модель Крипке без оценки. Если $F = (W, R)$ – шкала, то модель можно записать вот так $M = (F, V)$.

**Определение 2**. Дана модель $M = (F, V)$, будем говорить, что $M$ – *модель над шкалой* $F$.

**Определение 3**. Будем говорить, что формула $\varphi$ *общезначима в шкале* $F$ (обозначение: $F \models \varphi$), если для любой модели $M$ над $F$: $M \models \varphi$. То есть, при любой оценке $V$ верно, что $(F, V) \models \varphi$.  

Сравним определения истинности в отмеченном модели, истинности в модели и общезначимости в шкале. Пусть дана модель $M = (W, R, V)$. Истинность в отмеченной модели можно записать так:  
- $M, x \models \varphi$
- $(F, V), x \models \varphi$
- $(W, R, V), x \models \varphi$
	
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

**Определение 4**. Будем говорить, что формула является *общезначимой*, если она общезначима в любой модели, то есть, $\forall M: M \models \varphi$. 

:blue_book: **Упражнение 1**. Докажите, что определение общезначимости можно эквивалентным образом переписать так: формула $\varphi$ общезначима, если для произвольной шкалы $F$ верно, что $F \models \varphi$ 	

:blue_book: **Упражнение 2**. Приведите пример отмеченной модели $M = (F, V)$ и формулы $\varphi$ такой, что
- $M, x \models \varphi$, но  $M \not \models \varphi$
- $M \models \varphi$, но $F \not \models \varphi$
- $F \models \varphi$, но $\not \models \varphi$

:blue_book: **Упражнение 3**. Приведите пример модели $M$, в которой ровно 4 мира, такой, что 
– $M \models \Diamond \Box p \wedge  \Diamond \Box \neg p$

:green_book: **Упражнение 4 (с ответами)**. Укажите в каких шкалах (на рис. ниже) общезначимы следующие формулы?

![Model]({{ site.baseurl }}/docs/assets/images/Frames1-1.png)



<details><summary>  1. $\Box \bot$  </summary>

	$$F_1$$
	
Формула говорит, что мир тупиковый. 
</details>



<details><summary>  2. $\Box \bot \vee \Diamond \Box \bot$  </summary>
	
$$F_1, F_3, F_5$$ 

Формула говорит, что мир тупиковый или в шаге от тупикового. 
</details>

<details><summary> 3. $\Box p \to p$  </summary>

$$F_2, F_6, F_9$$

Формула гвоорит, что все стрелки рефлексивные.
</details>

<details><summary> 4. $\Diamond \Box p \to p$ </summary>

$$F_1, F_2, F_7, F_8, F_9$$

Формула говорит, что все стрелки симметричные. 
</details>

<details><summary> 5. $\Box p \to \Diamond p$ </summary>

$$F_2, F_4, F_6, F_7, F_8, F_9$$

Формула говорит, что из каждого миру исходит стрелка (не бывает тупиковых миров).
</details>

<details><summary> 6. $\Diamond p \to \Box p$ </summary>

$$F_1, F_2, F_3, F_4, F_7$$

Формула говорит, что если стрелка есть, то ровно одна.
</details>

<details><summary> 7. $\Diamond p \leftrightarrow \Box p$ </summary>

$$F_2, F_4, F_7$$

 Формула говорит, что из каждого мира исходит ровно одна стрелка.
</details>

<details><summary> 8. $p \leftrightarrow \Box \Box p$ </summary>

$$F_2, F_7$$

Формула говорит, что любые два шага приводят в исходный мир.
</details>

**Утверждение 1**. Пусть, $(W,R)$ – шкала Крипке, тогда
$$(W,R) \models \Box p \to p \iff \forall x \in W (xRx)$$		

*Доказательство*. 

($\Rightarrow$) Докажем по контрапозиции. Допустим, что найдется мир $x \in W$ такой, что $\neg (xRx)$. Наша задача подобрать оценку $V(p)$ такую, что   $(W,R,V), x \not \models \Box p \to p$. То есть, $(W,R,V), x \models \Box p$  и $(W,R,V), x \not \models  p$. Заметим, что подойдет следующая оценка $V(p)= W \setminus \\{x\\}$.

($\Leftarrow$) Дана шкала $(W,R)$ такая, что $R$ - рефлексивно. Возьмем произвольную модель $M$ над шкалой $(W, R)$ и произвольный мир $x \in W$. Допустим, что $M, x \models \Box p$. Докажем, что $M, x \models p$. Поскольку шкала $(W,R)$ - рефлексивна, то $xRx$. Значит, используя допущение, получаем, что $M, x \models p$, что и требовалось доказать. 

То же самое рассуждение удобно более подробно записать в виде натурального вывода в стиле Фитча:

<details><summary> Смотреть Fitch-style доказательство </summary>

<img src="/logic-course/docs/assets/images/proof.png" alt="Proof">

</details>


:blue_book: **Упражнение 5**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> $(W,R) \models \Box p \to \Box \Box p$ $\iff$ $\forall x \forall y \forall z ((xRy \wedge yRz) \Rightarrow xRz)$ 
</p>

:blue_book: **Упражнение 6**.  Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models p \to \Box \Diamond p$ $\iff$ $\forall x \forall y (xRy \to yRx)$
</p>

:blue_book: **Упражнение 7**.  Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models \Box p \to \Diamond p$ $\iff$ $\forall x \exists y \; xRy$
</p>

:blue_book: **Упражнение 8**.  Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models \Box \Box p \to \Box p$ $\iff$ $\forall x \forall y ( xRy \to \exists z (xRz  \wedge zRy))$
</p>

:blue_book: **Упражнение 9**.  Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models \Diamond \Box p \to \Box \Diamond p$ $\iff$ $\forall x \forall y \forall z ((xRy \wedge xRz) \to \exists w (yRw \wedge zRw))$
</p>

:blue_book: **Упражнение 10**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models p \to \Box(\Diamond p \to p) \Leftrightarrow \forall x \forall y \forall z ((xRy \wedge yRz) \to (x=y \vee y=z))$
</p>

:blue_book: **Упражнение 11**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models (p \wedge \Box p) \to \Box \Box p \Leftrightarrow \forall x \forall y \forall z ((xRy \wedge yRz) \to (x=z \vee xRz))$
</p>

:blue_book: **Упражнение 12**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models (\Diamond p \wedge \Diamond q) \to \Diamond (\Diamond p \wedge \Diamond q)$ $\Leftrightarrow$ $\forall x \forall y \forall z( (xRy \wedge xRz) \to \exists w (xRw \wedge wRy \wedge wRz))$
</p>

:blue_book: **Упражнение 13**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models \Diamond (\Diamond p \wedge \Box q) \to \Box (\Diamond p \vee \Box q)$ $\Leftrightarrow$ $\forall x \forall y_1 \forall y_2 ( (xRy_1 \wedge xRy_2) \to ( \forall z( y_1Rz \to y_2Rz) \vee \forall z( y_2Rz \to y_1Rz) ))$
</p>

:blue_book: **Упражнение 14**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models (p \wedge \Diamond \Box p) \to \Box p \Leftrightarrow$  $\forall x \forall y \forall z( (xRy \wedge x \not =y \wedge xRz) \to zRy)$
</p>

:blue_book: **Упражнение 15**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models \Box (\Box p \to q) \vee \Box  (\Box q \to p)$ ⇔ $\forall x \forall y \forall z ( (xRy \wedge xRz) \to (yRz \vee zRy))$
</p>

:blue_book: **Упражнение 16**. Пусть $(W,R)$ – шкала Крипке, $Alt_n := \neg \bigwedge \limits_{i=0}^n  \Diamond (p_i \wedge \bigwedge \limits_{i \not = j} \neg p_j)$ докажите, что 
<p style="text-align:center"> 
$(W, R) \models Alt_n \Leftrightarrow  \forall x \in W: |R(x)| \leq n$
</p>

:blue_book: **Упражнение 17**. Докажите, что существует следующее соответствие между формулой общезначимой в шкале и свойством отношения достижимости:

- $\Box p \to \Box^- p$ — симметричность
- $\Diamond p \to \Box^- \Diamond p$ — транзитивность
- $\Box p \to \Box^- \Box p$ — евклидовость
- $\Box \Box^- p \to \Box^- \Box p$ — свойство Чёрча-Россера (конфлюэнтность)
  

