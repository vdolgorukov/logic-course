---
title: Язык и семантика классической логики предикатов первого порядка
category: Jekyll
layout: post
---

# Язык

Договоримся использовать в качестве индивидных констант буквы из начала алфавита $Const = \\{ a, b, c, d, a_1, a_2, \dots \\}$, в качестве индивидных переменных буквы из конца алфавита $Var =\\{x, y, z, x_1, y_1, \dots \\}$, в качестве функциональных констант буквы из середины алфавита. $Func = \\{f, g, h, f_1, g_1, \dots \\}$.

**Определение**. *Терм*
* Индивидная константа является термом.
* Индивидная переменная является термом.
* Если $t_1, \dots, t_n$ – термы, а  $f$ – $n$-местная индивидная функция, то $f(t_1, \dots, t_n)$ – тоже терм.

Это определение можно кратко записать при помощи следующей грамматики: 

$$t:: = c \mid  x \mid f(t_1, \dots, t_n) $$ 

где $c \in Cnst$, $x \in Var$.


**Пример**. Следующие выражения являются термами:
* $a$
* $x$
* $f(a)$
* $g(a,b)$
* $g(f(a), g(x, f(f(x))))$

**Пример**. Рассмотрим следующий пример:  
*  0 - "число ноль"
*  1 - "число один"
*  2 – "число два"
*  +(1,2)  – "сумма единицы и двойки" (конечно удобно договориться и вместо "$+(1,2)$" писать "$1 + 2$")
*  +(1,+(2,3)) – "сумма единицы и суммы двойки и тройки"
*  x+1 – "число, которое на единицу больше данного "

Интуитивно термы удобно воспринимать как (сложные) имена. 

**Пример**. Рассмотрим следующее соответствие между термами и выражениями в естественном языка:
* $a$ – "Анна"
* $b$ – "Борис" 
* $f(a)$ – "отец Анны"
* $f(f(a))$ – "дедушка Анны по отцовской линии"
* $x$ – "он"
* $f(x)$ – "его отец"
* $g(a, b)$ – "старший среди Анны и Бориса"
* $g(x, b)$ – "старший среди него и  Бориса"
* $f(f(g(f(a), f(b))))$ – "дедушка по отцовской линии самого старшего среди отца Анны и отца Бориса"

**Определение**.

$$\Phi::= P(t_1, \dots, t_n) \mid \neg \Phi \mid (\Phi \wedge \Phi) \mid (\Phi \vee  \Phi ) \mid (\Phi \to \Phi ) \mid \exists x \Phi \mid \forall x \Phi $$

# Формализация естественного языка

:green_book: **Упражнение**. Запишите следующие высказывания на языке логике предикатов, используя следующие обозначания:
- $a$ – "Аня"
- $b$ – "Боря"
- $c$ – "Сережа"
- $P(x)$ – "x - умный" 
- $Q(x)$ – "x – красивый"
<details><summary> 1. Боря – красивый, но не умный </summary> $$Qb \wedge \neg Pb$$ </details>
<details><summary> 2. Боря – умный, Сережа – красивый, а Аня и умная, и красивая  </summary> $$Pb \wedge Qc \wedge Pa \wedge Qa$$ </details>
<details><summary> 3. Если Боря красивый, то Аня - умная. </summary> $$Qb \to Pa$$ </details>
<details><summary> 4. Eсли Сережа красивый, то все красивые. </summary> $$Qc \to \forall x Qx$$ </details>
<details><summary> 5. Никто не красив и умен одновременно. </summary> $$\neg \exists x (Qx \wedge Px)$$ </details>

# Семантика

**Определение**. Моделью называется пара $M = (D, I_M)$, где $D \not = \varnothing$ – носитель интерпретации (домен, универсум), $I_M$ – функция интерпретации, областью определения которой является множество $Cnst \cup Fn \cup Pr$ и такая, что 
* $I_M(c) \in D$ для $c \in Cnst$
* $I_M(f) \in \\{ f \mid f: D^n \to D\\}$ для $f\in Fn$ от $n$ аргументов
* $I_M(P) \subseteq D^n$ для $P\in Pr$  от $n$ аргументов

**Обозначение**. Будем писать $c_M$ вместо $I_M(c)$, $f_M$ вместо $I_M(f)$ и  $P_M$ вместо $I_M(P)$.  

С каждой моделью мы будем свзывать означивание, функцию, которая приписывает объекты переменным.

**Определение**. *Означиванием* будем называть функцию $v: Var \to D$.

**Определение**. *Значение терма (денотат)* (обозначение: $\Vert t \Vert_M^v$). Пусть $M = (D, I)$ - модель классической логики предикатов первого порядка, $v$ – означивание. Определим по индукции значение терма в модели $M$ при означивании $v$: 
$\Vert c \Vert_M^v = c_M \in D$ для $c \in Const$
$\Vert x \Vert_M^v = v(x) \in D$ для $x \in Var$
$\Vert f(t_1, \dots, t_n) \Vert_{M}^{v} = f_M(\Vert t_1 \Vert_M^v, \dots, \Vert t_n \Vert_M^v) \in D$ для  $f \in Fn$, такая, что  $arity(f)=n$, $t_1, \dots, t_n \in Trm$.

Часто мы будем писать $\Vert t \Vert^v$ вместо $\Vert t \Vert^v_M$, если из контекста понятно, о какой модели идет речь. Также будем писать $\Vert t \Vert^{x \mapsto a}$, указывая только ту часть означивания, которая важна для оценки терма.

:blue_book: **Упражнение**. Пусть модель $M = (\mathbb{N}, I_M)$, где $I_M$ –  функция такая, что $I_M(f)$ – операция сложения в обычном арифметическом смысле,  $I_M(g)$ – операция умножения в обычном арифметическом смысле; $a_M = 0$, $b_M=1$ пусть $v$ – означивание такое, что $v: x \mapsto 2, y \mapsto 3$. Вычислите значение для следующих термов:
* $\Vert f(a,b) \Vert^v_M$
* $\Vert g(a,x) \Vert^v_M$
* $\Vert f(x,x) \Vert^v_M$
* $\Vert g(a,f(y,x)) \Vert^v_M$

**Обозначение**. Пусть $v$ – означивание, обозначим  $v[x \mapsto d]$ новое означивание, которое  переменной $x$ сопоставляет объект $d \in D$, а в остальном совпадает с $v$.

**Определение**. Пусть $M = (D, I)$ - модель классической логики предикатов первого порядка, $v$ – означивание. Дадим индуктивное определение истинности формулы в модели при означивании:
* $M, v \models P(t_1, \dots, t_n)$ е.т.е. $\langle \Vert t_1 \Vert_M^v, \dots, \Vert t_n \Vert_M^v \rangle \in P_M$
* $M, v \models \neg \Phi$ е.т.е. $M, v \not \models \Phi$
* $M, v \models \Phi \wedge \Psi$ е.т.е. $M, v \models \Phi$ и $M, v \models  \Psi$
* $M, v \models \Phi \vee \Psi$ е.т.е. $M, v \models \Phi$ или $M, v \models  \Psi$
* $M, v \models \Phi \to \Psi$ е.т.е. если $M, v \models \Phi$, то $M, v \models  \Psi$
* $M, v \models \exists x \Phi$ е.т.е. найдется $d \in D$: $M, v[x \mapsto d] \models \Phi$
* $M, v \models \forall x \Phi$ е.т.е. для любого $d \in D$: $M, v[x \mapsto d] \models \Phi$

**Пример**. Опишем условия истинности для конкретных формул:
* $M, v \models P(a)$ ⇔  $\Vert a \Vert^v_M \in P_M $
* $M, v \models P(x)$ ⇔ $\Vert x \Vert^v_M \in P_M$ ⇔ $v(x) \in P_M$
* $M, v \models R(a,b)$ ⇔ $\langle  \Vert a \Vert^v_M,  \Vert b \Vert^v_M \rangle  \in R_M$
* $M, v \models P(f(a))$  ⇔ $\Vert f(a) \Vert^v_M \in P_M \iff  f_M(\Vert a \Vert^v_M) \in P_M  $
* $M, v \models \forall x P(x)$ ⇔ для любого $d \in D$: $M, v^x_d \models Px$ ⇔ для любого $d \in D: v^x_d (x) \in P_M$  
⇔ для любого $d \in D: d \in P_M $
* $M, v \models \forall x \exists y R(x, y)$ ⇔ для любого $d \in D$ найдется $d' \in D: \langle d, d' \rangle \in R_M$

:blue_book: **Упражнение**. Опишите условия истинности для следующих выражений:
* $R(x, f(a, y) )$
* $\exists x P(f(x))$

**Пример**. Том и Джерри.  Рассмотрим модель $M = (D, I_M)$, где $D = \\{$ :cat: , :mouse: $\\}$, $I_M$ устроена так:
* $t_M =$ :cat: 
* $j_M =$ :mouse: 
* $C_M = \\{$ :cat:  $\\}$
* $M_M = \\{$ :mouse: $\\}$
* $A_M = \\{$ :cat:, :mouse: $\\}$
* $H_M$ = $\varnothing$ 

означивание устроено так: $v: x \mapsto$ :cat:

| Естественных язык | Логика предикатов  | Верно ли в модели  M при означивании v |
|----------|----------|----------|
| Том – кот |  $Ct$   |  Да   |
| Джерри - мышь   | $Mj$   | Да   |
| Это кот   | $Сx$   | Да  |


**Пример**. Ахиллес и Черепаха. Рассмотрим модель $M = (D, I_M)$, где $D = \\{$ :turtle:, :runner: $\\}$, $I_M$ устроена так:
* $a_M =$ :runner:
* $T_M = \\{$ :turtle: $\\}$
* $R_M = \\{ \langle$ :runner: , :turtle: $\rangle \\}$

**Пример**. $D = \\{$ :black_circle: , :red_circle: , :black_medium_square: $\\}$

**Пример**. Рассмотрим модель (см. рис. ниже) $M = (D, I_M)$, где 
* $D = \\{\square, \blacksquare, \triangle,\blacktriangle \\}$
* $B_M = \\{\blacksquare, \blacktriangle \\}$
* $S_M = \\{\blacksquare, \square \\}$
* $T_M = \\{ \triangle, \blacktriangle  \\}$
* $a_M = \square$
* $b_M = \blacktriangle$ 
и означивание $v: x \mapsto \triangle$.

![Model]({{ site.baseurl }}/docs/assets/images/square.png)

Проверим, что следующие утверждения являются корректными:
* $M, v \models S(a) \Leftrightarrow  \Vert a \Vert^v_M \in S_M \Leftrightarrow  \square \in  \\{\blacksquare, \square \\}$
* $M, v \models T(x) \Leftrightarrow  \Vert x \Vert^v_M \in T_M \Leftrightarrow  v(x) \in T_M \Leftrightarrow  \triangle \in  \\{ \triangle, \blacktriangle \\}$

:green_book: **Упражнение (c ответами)**. Рассмотрим модель $M$ и означивание $v$ из примера выше. Оцените корректность следующих утверждений:
<details><summary>  $M, v \models B(a)$ </summary> 
 
  
$M, v \not \models B(a)$, поскольку 
  
$$M, v \models B(a) \Leftrightarrow  \Vert a \Vert^v_M \in B_M \Leftrightarrow \square \in \\\{\blacksquare, \blacktriangle \\\}$$
 
  
А последнее утверждение очевидно ложно. Действительно, белый квадрат (денотат $a$) не является черной фигурой ($B$).

</details>

<details><summary>  $M, v \models B(b)$ </summary>  ... </details>

<details><summary>  $M, v \models B(x)$  </summary> ...  </details>

<details><summary>  $M, v \models \exists x P(x)$  </summary>  ...  </details>


:blue_book: **Упражнение**. 
Пусть фигуры из универсума $D$ расположены как на рисунке ниже:



1. Пусть двухместный предикат $H(1,2)$ означает что объект 1 расположен выше объекта 2, двухместный предикат $L(1,2)$ означает что объект 1 расположен левее объекта 2 а функциональная константа $f$ означает функцию, которая возвращает ближайший объект по часовой стрелке.

* Чему равно $H_M$?
* Чему равно $L_M$?
* Чему равно $f_M$?

2. Оцените корректность следующих утверждений
* $M, v \models H(a, b)$
* $M, v \models H(a, f(b))$
* $M, v \models \forall x (B(x) \to \exists y H(y,x))$

**Определение**. *Подстановка в терм*.  Пусть $s, t$ – термы, тогда $t[s/x]$ – новый терм, который получается заменой всех вхождений переменной $x$ в терме $t$ на терм $s$. Определим $t[s/x]$ индуктивно:
* $c[s/x] = c$ для $c\in Cnst$
* $y[s/x] = y$ для $y \in Vr$ т.ч. $x \not = y$
* $x[s/x] =s $ 
* $f(t_1, \dots, t_n)[s/x] = f(t_1[s/x], \dots, t_n[s/x])$, где $f$ – $n$-местная предметная функция, $t_1, \dots, t_n$ – термы

**Пример**. $f(x)[a/x]=f(a)$, $h(f(x), a)[b/x] = h(f(b), a)$, $h(g(x), x)[f(b)/x] = h(g(f(b)), f(b))$	

**Определение**. *Подстановка в формулу*. $\Phi[t/x]$ обозначает формулу, которая получается в результате замены в формуле $\Phi$ всех свободных вхождений переменной $x$ на терм $t$. Терм $t$ должен быть свободен для подстановки в $\Phi$. 
Определим $\Phi[t/x]$ индуктивно: 
* $P(t_1, \dots, t_n)[t/x]= P(t_1[t/x], \dots, t_n[t/x])$	
* $(\neg \Psi)[t/x] = \neg (\Psi[t/x])$
* $(\Psi \wedge \Theta)[t/x] = \Psi[t/x] \wedge \Theta[t/x]$
* $(\forall y \Psi)[t/x] = \forall y (\Psi[t/x])$, если $x \not = y$
* $(\forall x \Psi)[t/x] = \forall x \Psi $
* $(\exists y \Psi)[t/x] = \forall y (\Psi[t/x])$, если $x \not = y$
* $(\exists x \Psi)[t/x] = \exists  x \Psi $

**Определение**. Будем говорить, что терм $t$ *свободен для подстановки* вместо переменной $x$ в формуле $\Phi$, если после подстановки ни одна переменная из терма не окажется связанной, т.е. $Var(t) \subseteq FV(\Phi[t/x])$

**Пример** Терм $f(y)$ не является свободным для подстановки вместо переменной $x$ в формулу $\exists y R(x, y)$.

**Контрольный вопрос** Какие термы являются свободными для подстановки вместо переменной $y$ в формуле $\forall x R(f(x),y)$:
<details><summary>  $f(g(x,a))$  </summary>  нет </details>
<details><summary>  $f(a))$  </summary> да  </details>
<details><summary> $g(a,z)$ </summary>  да  </details>
<details><summary> $f(x, z)$ </summary> нет  </details>
