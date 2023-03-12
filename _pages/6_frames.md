---
title: Шкалы Крипке
category: Jekyll
layout: post
---
  
**Определение**. Пусть $M = (W, R, V)$ – модель Крипке, *шкалой Крипке* будем называть  пару $(W, R)$.
То есть, шкала это модель Крипке без оценки. Если $F = (W, R)$ – шкала, то модель можно записать вот так $M = (F, V)$.

**Определение**. Дана модель $M = (F, V)$, будем говорить, что $M$ – *модель над шкалой* $F$.

**Определение**. Будем говорить, что формула $\varphi$ *общезначима в шкале* $F$ (обозначение: $F \models \varphi$), если для любой модели $M$ над $F$: $M \models \varphi$. То есть, при любой оценке $V$ верно, что $(F, V) \models \varphi$.  

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

**Определение**. Будем говорить, что формула является *общезначимой*, если она общезначима в любой модели, то есть, $\forall M: M \models \varphi$. 

**Упражнение**. Докажите, что определение общезначимости можно эквивалентным образом переписать так: формула $\varphi$ общезначима, если для произвольной шкалы $F$ верно, что $F \models \varphi$ 	

**Упражнение**. Приведите пример отмеченной модели $M = (F, V)$ и формулы $\varphi$ такой, что
- $M, x \models \varphi$, но  $M \not \models \varphi$
- $M \models \varphi$, но $F \not \models \varphi$
- $F \models \varphi$, но $\not \models \varphi$

**Упражнение**. Приведите пример модели $M$, в которой ровно 4 мира, такой, что 
$$M \models \Diamond \Box p \wedge  \Diamond \Box \neg p$$

**Упражнение (с ответами)**. Укажите в каких шкалах (на рис. ниже) общезначимы следующие формулы?

![Model](/logic-course/docs/assets/images/frames.png)

<details><summary>  1. $\Box \bot$  </summary>
	
- [x] $F_1$ </br>
- [ ] $F_2$ </br>
- [ ] $F_3$ </br>
- [ ] $F_4$ </br>
- [ ] $F_5$ </br>
- [ ] $F_6$ </br>
- [ ] $F_7$ </br>
- [ ] $F_8$ </br>
- [ ] $F_9$ </br>

Формула говорит, что мир тупиковый. 

</details>



<details><summary>  2. $\Box \bot \vee \Diamond \Box \bot$  </summary>
$$F_1, F_3, F_5 $$ 
Формула говорит, что мир тупиковый или в шаге от тупикового. 
</details>

<details><summary> 3. $\Box p \to p$  </summary>
</details>

<details><summary> 4. $\Diamond \Box p \to p$ </summary>
</details>

<details><summary> 5. $\Box p \to \Diamond p$ </summary>
</details>

<details><summary> 6. $\Diamond p \to \Box p$ </summary>
</details>

<details><summary> 7. $\Diamond p \leftrightarrow \Box p$ </summary>
</details>

<details><summary> 8. $p \leftrightarrow \Box \Box p$ </summary>
</details>

**Утверждение**. Пусть, $(W,R)$ – шкала Крипке, тогда
$$(W,R) \models \Box p \to p \iff \forall x \in W (xRx)$$		

*Доказательство*. 

($\Rightarrow$) Докажем по контрапозиции. Допустим, что найдется мир $x \in W$ такой, что $\neg (xRx)$. Наша задача подобрать оценку $V(p)$ такую, что   $(W,R,V), x \not \models \Box p \to p$. То есть, $(W,R,V), x \models \Box p$  и $(W,R,V), x \not \models  p$. Заметим, что подойдет следующая оценка $V(p)= W - \\{x\\}$.

($\Leftarrow$)

![Model](/logic-course/docs/assets/images/proof.png)

**Утверждение**. Пусть, $(W,R)$ – шкала Крипке, тогда
<p style="text-align:center"> $(W,R) \models \Box p \to \Box \Box p$ $\iff$ $\forall x \forall y \forall z ((xRy \wedge yRz) \Rightarrow xRz)$ </p>


[//]: <> (сериальность евклидовость направленность)

**Упражнение**.  Пусть $(W,R)$ – шкала Крипке, докажите, что 
<p style="text-align:center"> 
$(W, R) \models \Box \Box p \to p$ $\iff$ $\forall x \forall y ( xRy \to \exists z (xRz  \wedge zRy))$
</p>

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models p \to \Box(\Diamond p \to p) \Leftrightarrow \forall x \forall y \forall z ((xRy \wedge yRz) \to (x=y \vee y=z))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models (p \wedge \Box p) \to \Box \Box p \Leftrightarrow \forall x \forall y \forall z ((xRy \wedge yRz) \to (x=z \vee xRz))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models (\Diamond p \wedge \Diamond q) \to \Diamond (\Diamond p \wedge \Diamond q) \Leftrightarrow \forall x \forall y \forall z( (xRy \wedge xRz) \to \exists w (xRw \wedge wRy \wedge wRz))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models \Diamond (\Diamond p \wedge \Box q) \to \Box (\Diamond p \vee \Box q) \Leftrightarrow \forall x \forall y_1 \forall y_2 ( (xRy_1 \wedge xRy_2) \to ( \forall z( y_1Rz \to y_2Rz) \vee \forall z( y_2Rz \to y_1Rz) ))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$(W, R) \models (p \wedge \Diamond \Box p) \to \Box p \Leftrightarrow$  $\forall x \forall y \forall z( (xRy \wedge x \not =y \wedge xRz) \to zRy)$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, докажите, что 
$$(W, R) \models \Box (\Box p \to q) \vee \Box  (\Box q \to p)$ ⇔ $\forall x \forall y \forall z ( (xRy \wedge xRz) \to (yRz \vee zRy))$$

**Упражнение**. Пусть $(W,R)$ – шкала Крипке, $Alt_n := \bigwedge \limits_{i=0}^n  \Diamond (p_i \wedge \bigwedge \limits_{i \not = j} \neg p_j)$ докажите, что 
$$(W, R) \models Alt_n \Leftrightarrow  \forall x \in W: |R(x)| \leq n$$ 


