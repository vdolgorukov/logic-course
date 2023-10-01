---
title: Упражнения
category: Jekyll
layout: post
---

# Классическая логика: упражнения

## Таблицы истинности для КЛВ

**Упражнение 1.** Браун, Джонс и Смит обвиняются в совершении преступления. Они дают следующие показания

Браун: «‎Джонс – виновен, а Смит – невиновен»

Джонс: «Если Браун виновен, то виновен и Смит»

Смит: «Я невиновен, но хотя бы один из них двоих виновен»

При помощи таблицы истинности ответьте на следующие вопросы: 
* Совместимы ли показания всех троих подозреваемых?
* Показание одного из обвиняемых следуют из показаний другого. О ком идет речь?
* Если все трое невиновны, то кто из них солгал?
* Если все трое сказали правду, то кто виновен, а кто — нет? 
* Если невиновный говорит истину, а виновный лжет, то кто невиновен, а кто виновен?


**Упражнение 2.** Задача про принцессу и тигра (Смаллиан)

На каждую из дверей трёх комнат прибита табличка. Если надпись на табличке истинная, то в комнате принцесса, а если ложная - тигр. Определите кто находится в каждой комнате. 

![принцесса и тигр](1_page-0001.jpg)


**Упражнение 3.** (Клини) Запишите каждое из суждений на языке логики и определите имеет ли в нём место логическое следование:
	
* Eсли он принадлежит нашей компании [K], то он храбр и на него можно положиться [Х $\wedge$ П]. Он не принадлежит к нашей компании. Значит, он не храбр или же на него нельзя положиться. 
* В бюджете возникает дефицит, если не повысят пошлины. Если в бюджете имеется дефицит, то государственные расходы на общественные нужды сократятся.  Значит, если повысят пошлины, то государственные расходы на общественные нужды не сократятся. 
* Если он автор этого слуха, то он глуп или беспринципен. Он не глуп и не лишен принципов, значит, не он автор этого слуха. 
* Если подозреваемый совершил эту кражу, то либо она была тщательно подготовлена, либо он имел соучастника. Если бы кража была подготовлена тщательно, то, если бы был соучастник, украдено было бы гораздо больше. Значит, подозреваемый невиновен. 
* Если наступит мир, то возникнет депрессия, разве что страна проведет программу перевооружения либо осуществит грандиозную программу внутренних капиталовложений в области образования, охраны окружающей среды, борьбы с бедностью и т. п. Невозможно договориться о целях такой грандиозной программы внутренних капиталовложений. Значит, если наступит мир и не будет депрессии, то непременно будет осуществляться программа перевооружения. 
* Намеченная атака удастся, только если захватить противника врасплох или же если позиции его плохо защищены. Захватить его врасплох можно только, если он беспечен. Он не будет беспечен, если его позиции плохо защищены. Значит, атака не удастся. 
* Если мы не будем продолжать политику сохранения цен, то мы потеряем голоса фермеров. Если же мы будем продолжать эту политику, то продолжится перепроизводство, разве что мы прибегнем к контролю над производством. Без голосов фермеров нас не переизберут. Значит, если нас переизберут и мы не прибегнем к контролю над производством, то будет продолжаться перепроизводство.


**Упражнение 4.** Существовал клуб с такими правилами. Упростите правила клуба:
* Члены финансового комитета должны избираться среди членов общей дирекции. 
* Нельзя быть одновременно членом общей дирекции и членом библиотечного комитета, не будучи членом финансового комитета. 
* Ни один член библиотечного совета не может быть членом финансового комитета. 


**Упражнение 5.** Проверьте общезначимость формулы с помощью таблиц истинности. 
* $\neg (p \vee q) \leftrightarrow (\neg p \wedge \neg q)$
* $\neg (p \wedge \neg q) \leftrightarrow (\neg p \vee  q)$
* $(p \vee (q \wedge r)) \leftrightarrow ((p \wedge q) \vee (p \wedge r))$
* $((p \rightarrow q) \rightarrow p) \rightarrow p$
* $(p \rightarrow (q \rightarrow r)) \leftrightarrow ((p \wedge q) \rightarrow r)$
* $(p \wedge (q \wedge r)) \leftrightarrow ((p \wedge q)\wedge (p \wedge r))$
* $(p \rightarrow (q \rightarrow r)) \rightarrow ((p \rightarrow q ) \rightarrow (p \rightarrow r))$
* $p \rightarrow (q \rightarrow (p \land q))$ 
* $(p\wedge q) \leftrightarrow \neg(p \rightarrow \neg q)$
* $(p\vee q) \leftrightarrow \neg p \rightarrow q$
* $(\neg p \wedge \neg q) \leftrightarrow  (p \downarrow q)$
* $((p \mid q)\mid (p \mid q)) \leftrightarrow (p\wedge q)$
* $(p \mid p) \mid (q \mid q) \leftrightarrow (p \lor q)$


**Упражнение 6.** В каких отношениях (попарно) находятся следующие высказывания:
* $p$, $p\to q$, $\neg p \to q$
* $p \to q$, $q \to p$, $p \wedge q$
* $p\wedge q$, $p \vee q$, $p \veebar q$ 
* $p \mid q$, $p \downarrow q$, $p \veebar q$
* $p$, $p \wedge (p \vee q)$, $p \mid q$
* $q \to p$, $p \to q$, $\neg p \leftrightarrow \neg q$


**Упражнение 7.** Заметим, что некоторые пропозициональные связки можно выразить через комбинацию других. Например, импликацию можно выразить через дизъюнкцию и отрицание:

$$p \to q = \neg p \vee q$$ 

или через конъюнкцию и отрицание:

$$\neg(p \wedge \neg q)$$

* Выразите $\wedge, \vee, \veebar, \leftrightarrow, \mid, \downarrow $, используя только $\neg$ и $\to$.
* Выразите $\vee, \veebar, \to, \leftrightarrow, \mid, \downarrow$, используя только $\neg$ и $\wedge$.
* Выразите $\wedge,\veebar, \to, \leftrightarrow, \mid, \downarrow $, используя только $\neg$ и $\vee$. 
* Выразите $\neg, \wedge, \vee, \veebar, \to, \leftrightarrow, \downarrow$,  используя только $\mid$. 
* Выразите $\neg, \wedge, \vee, \veebar, \to, \leftrightarrow,\mid$,  используя только $\downarrow$. 


**Упражнение 8(\*).** Пропозициональные связки можно понимать как булевы функции, то есть, функции, которые определяются на множестве $\{0,1\}$. 

Отрицание будет примером одноместной функции

$f: \{0,1\} \mapsto \{0,1\}$, 

конъюнкция, дизъюнкция и т.д. примерами двухместной функции

$f^{2}: \{0,1\} \times \{0,1\} \mapsto \{0,1\}$

Опишите все возможные булевы функции от двух переменных. Сколько их всего? Какие из них соответствуют известным связками, а какие – нет? Сколько возможно булевых функций от 3-х переменных? А от n переменных?


**Упражнение 1.** Постройте вывод в натуральном исчислении для КЛВ:
* $p$,  $p \to q \vdash q$
* $p \wedge q \vdash q$
* $p \wedge q \vdash q \wedge p$ 
* $p$, $p \to q$, $q \to r \vdash r$

**Упражнение 2.** Постройте вывод в натуральном исчислении для КЛВ:
* $\vdash (p \wedge q) \to q$
* $\vdash  (p \wedge q) \to  (q \wedge p)$ 
* $\vdash  (p \wedge (q \wedge r)) \to ((p \wedge q) \wedge r) $ 
* $\vdash  ((p \wedge q) \wedge (r \wedge s)) \to ((p \wedge r) \wedge (q \wedge s))$ 


**Упражнение 3.** Постройте вывод в натуральном исчислении для КЛВ:
* $\vdash p \to ((p \to q) \to  q)$
* $\vdash (p \to (q \to r)) \to  ((p \to q) \to  (p \to r))$
* $\vdash (q \to r) \to  ((p \to q) \to  (p \to r))$
* $\vdash (p \to q) \to ((q \to r) \to (p \to r))$
* $\vdash p \to (q \to p)$

**Упражнение 4.** Постройте вывод в натуральном исчислении для КЛВ:
* $\vdash (p \wedge q) \to (p \to q)$
* $p, q, (p \wedge q) \to r \vdash r$
* $\vdash (p \to (q \to r)) \to ((p \wedge q)\to r)$
* $\vdash ((p \wedge q)\to r) \to  (p \to (q \to r))$
* $\vdash (p \to q) \to ((p \wedge r) \to (q \wedge r))$
* $\vdash (p \to (q \wedge r)) \to ((p \to q) \wedge (p \to r))$
* $\vdash ((p \to q) \wedge (p \to r)) \to (p \to (q \wedge r))$
* $\vdash (p \to ((q \wedge r) \to s)) \to (q \to ((p \wedge r) \to s ))$
* $(p \wedge q) \to ((r \wedge s) \to t)\dashv \vdash (p \wedge r) \to (q \to (s \to t))$ [^просвязки]
* $(p \wedge q) \to ((r \wedge s) \to t) \dashv \vdash p\to ((q \wedge s) \to (r \to t)$

[^просвязки]: $A \dashv \vdash B := A \vdash B$ и $B \vdash A$

**Упражнение 5.** Постройте вывод в натуральном исчислении для КЛВ:
* $p \to q, \neg q \vdash \neg p$
* $\vdash (p \to q) \to ((p \to \neg q ) \to \neg p)$
* $p \to q \vdash \neg q \to \neg p$
* $\neg p \to \neg q \vdash q \to p$
* $\vdash \neg p \to (p \to q)$
* $\vdash \neg (p \to q) \to p$
* $\vdash \neg (p \to q) \to \neg q$
* $p \to (\neg q \to \neg (p \to q))$
* $\vdash (p \to q) \to (\neg p \vee q)$
* $\vdash (\neg p \vee q) \to (p \to q)$
    

**Упражнение 6.** Постройте вывод в натуральном исчислении для КЛВ:
* $\neg (p \vee q )\vdash \neg p \wedge \neg q$ 
* $\neg p \wedge \neg q \vdash \neg (p \vee q)$
* $\neg (p \wedge q) \vdash \neg p \vee \neg q$
* $\neg p \vee \neg q \vdash \neg (p \wedge q)$


**Упражнение 7.** Постройте вывод в натуральном исчислении для КЛВ:
* $p \vee q, p \to r, q \to r \vdash r$ 
* $p \vee q, \neg q \vee r \vdash p \vee r$
* $p \vee q \vdash q \vee p$
* $p \vee (q \vee r) \vdash (p \vee q) \vee r$
    

## Логика предикатов

**Упражнение 1.** Переведите на язык логики предикатов следующие высказывания:
* Аня умная, а Боря - красивый.
* Если Боря красивый, то и Аня красивая.
* Если Боря умный, то все умные.
* Кое-кто и умен, и красив.
* Все красивые люди – умные.

**Упражнение 2.** Переведите на язык логики предикатов следующие высказывания:
* Аня любит Борю, а он ее нет.
* Боря любит себя.
* Аня любит только кого-то одного: Борю или Серёжу.
* Серёжа никого не любит.
* Боря любит только себя. 
* Если Серёжа и Аня любят друг друга, то Боря не любит Аню. А если Серёжа любит Аню, а она его – нет, то Боря любит Аню. 
* Некоторые любят всех. 
* Все любят всех. 
* Все любят кого-то. 
* Некоторых никто не любит.
* Все друзья Бори любят Аню. 
* Боря любит себя и Анину подругу.
* Некоторые Анины подруги любят Борю. 
* Некоторые друзья Бори любят каких-то Аниных подруг. 
* Всех подруг Ани любят какие-то друзья Бори.

**Упражнение 3.** Переведите на язык логики предикатов следующие высказывания:
* Аня любит только Борю.
* У Бори не более двух друзей.
* У Ани, как минимум, две подруги.
* Боря любит только Аню и себя.
* У Бори есть друг, который любит ровно двух подруг Ани.

**Упражнение 4.** Используя свойства $\triangle$ («быть мужчиной»‎) и $\triangledown$  («быть женщиной»‎), а также отношения  $P(x, y)$ (« $x$ является родителем $y$»‎) и $M(x,y)$ (« $x$ и $y$ состоят в браке»‎)  выразите следующие отношения):
* дочь
* мать
* сын
* отец
* бабушка
* дедушка
* прабабушка
* прадедушка
* брат
* сестра
* сиблинг
* единокровный брат
* единоутробная сестра
* кузина
* дядя
* племянник
* теща
* тесть
* зять
* свекровь
* невестка 
* золовка
* шурин
* деверь
* свояк
* свояченица
* кузина
* двоюродный дед
* троюродная бабка
* внучатый двоюродный племянник


**Упражнение 5.** (Е.Дашков) "Перед вами план некоторого города: 

|  | 1 | 2 | 3 | 4 | 5 |
|:-------------:|:---------------:|:---------------:|:---------------:|:---------------:|:---------------:|
| 1 | B S |  | H | S |  |
| 2 | S |  |  | R |  |
| 3 |  | R | S |  |  |
| 4 |  | S B |  | H | B |
| 5 | H R |  | R |  |  |


С севера на юг идут проспекты, пересекающие улицы, которые идут с запада на восток. Те и другие обозначены номерами. Буквы на перекрестах обозначают находящиеся там заведения. Например, утверждение $B(i, j)$ значит, что на пересечении $i$-го проспекта с $j$-ой улицей находится банк. Аналогично обозначены гостиницы ($H$), рестораны ($R$) и универсамы ($S$). Проверьте следующие утверждения на истинность (в отношении данного города) и переведите их с естественного языка на формальный (или наоборот)":

* На каждой улице, где есть банк, имеется гостиница.
* Найдется проспект с банком, пересекающийся с улицей, где нет ни гостиниц, ни ресторанов.
* Для каждой улицы верно, что там есть универсам или пересечение с проспектом, ведущим к банку.
* Найдется такой ресторан, что на одном с ним проспекте нет банков.
* $\exists n \forall m  (S(n, m) \to  \neg \exists k R(k, m))$
* $\forall n \exists m B(n, m) \vee  \exists n \exists m \forall k (\neg H(n, m) \wedge (S(n, k) \vee  S(k, m)))$.
*  $\exists m \forall n \forall k ((B(n, m) \wedge B(k, m))  \to  n = k)$.
*  $\forall m \forall u \forall v (\exists x \exists y (B(u, m) \wedge R(v, m) \wedge H(x, m) \wedge S(y, m))  \to  (\neg B(m, m) \wedge B(m, m)))$.



**Упражнение 6.**  Методом аналитических таблиц проверьте общезначимость следующих формул:
* $\forall x Sx \to Sa$
* $Sa \to \exists x Sx$
* $\forall x (Sx \wedge Px) \leftrightarrow  (\forall x Sx \wedge \forall x Px)$
* $\exists x (Sx \vee  Px) \leftrightarrow  (\exists x Sx \vee \exists x Px)$
* $(\forall x (Sx \to  Px) \wedge Sa) \to Pa$
* $\forall x (Sx \to Px) \to (\exists x Sx \to \exists x Px)$
* $(\forall x (Sx \to Px) \wedge \exists x Sx) \to \exists x (Sx \wedge Px )$
* $(\forall x (Sx \to Px) \wedge \forall x (Px \to Qx)) \to \forall x (Sx \to Qx)$
* $\forall x (Sx \to Px) \leftrightarrow \forall x (\neg Px \to \neg Sx)$


**Упражнение 7.**  Методом аналитических таблиц проверьте общезначимость следующих формул:
* $\exists y \forall x (xRy) \to \forall x \exists y (xRy)$	
* $\forall x (xRx) \to \forall x \exists y (xRy)$	
* $\forall x (xRx) \to \exists y (xRy \wedge yRx)$
* $\forall (xRy \to \neg yRx) \leftrightarrow (\forall x (\neg xRx) \wedge \forall x \forall y ((xRy \wedge yRx) \to x=y) )$


## Дополнительные задачи


**Упражнение 1(\*).** Докажите, что законы идемпотентности
* $x\wedge x =x$
* $x\vee x = x$

можно вывести из законов поглощения 

* $x=(x\wedge(x \vee y))$
* $x=x \vee (x \wedge y)$.


**Упражнение 2(\*).** Используя метод математической индукции, докажите, что
* $\neg \bigwedge \limits_{i=1}^{n} \varphi_i \equiv \bigvee \limits_{i=1}^{n} \neg  \varphi_i$  
* $\neg \bigvee \limits_{i=1}^{n} \varphi_i \equiv \bigwedge \limits_{i=1}^{n} \neg  \varphi_i$ 
* $\varphi \wedge (\bigvee \limits_{i=1}^n \psi_i) \equiv \bigvee \limits_{i=1}^n (\varphi \wedge  \psi_i)$
* $\varphi \vee (\bigwedge \limits_{i=1}^n \psi_i) \equiv \bigwedge \limits_{i=1}^n (\varphi \vee  \psi_i)$
* $(\bigwedge \limits_{i=1}^{n} \varphi_i) \vee (\bigwedge \limits_{j=1}^{m} \psi_j) \equiv \bigwedge \limits_{i=1}^{n} \bigwedge \limits_{j=1}^{m} (\varphi_i \vee \psi_j)$ 
* $(\bigvee \limits_{i=1}^{n} \varphi_i) \wedge (\bigvee \limits_{j=1}^{m} \psi_j) \equiv \bigvee \limits_{i=1}^{n} \bigvee \limits_{j=1}^{m} (\varphi_i \wedge \psi_j)$ 


**Упражнение 3(\*).** Докажите в натуральном исчислении для логики высказываний следующие теоремы КЛВ:
* $\vdash ((p \to q) \to p) \to p$
* $\vdash (p \wedge (q \vee r)) \to  ((p \wedge q) \vee (p \wedge r))$
* $\vdash [p \vee (q \wedge r)] \to [(p \vee q) \wedge (p \vee r) ]$
* $\vdash [(p \vee q) \wedge (p \vee r) ] \to [p \vee (q \wedge r)]$ 
* $\vdash [(p \vee q) \wedge (r \vee s)] \to  [((p \wedge r) \vee (p \wedge s))  \vee  ((q \wedge r) \vee (q \wedge s))]$
* $\vdash  [((p \wedge r) \vee (p \wedge s))  \vee  ((q \wedge r) \vee (q \wedge s))] \to  [(p \vee q) \wedge (r \vee s)]$


**Упражнение 4(\*).** Докажите, что правило дизъюнктивный силлогизм можно заменить на разбор случаев.


**Упражнение 5(\*).** Добавим в натуральное исчисление для классической логики высказываний следующие правила вывода для $\leftrightarrow$:

<font size = 7> $\leftrightarrow_{\text{и}} \frac{A \leftrightarrow B}{A \to B}$ 
	
<font size = 6> $\leftrightarrow_{\text{и}} \frac{A \leftrightarrow B}{B \to A}$

<font size = 5> $\leftrightarrow_{\text{в}} \frac{A \to B, B \to A}{A \leftrightarrow B}$ 





Найдите доказательства для следующих теорем:
* $\vdash [p \leftrightarrow (q \leftrightarrow r)] \to [(p \leftrightarrow q) \leftrightarrow r]$
* $\vdash [(p \leftrightarrow q) \leftrightarrow r]  \to [p \leftrightarrow (q \leftrightarrow r)]$


**Упражнение 6(\*).** Докажите в аксиоматическом исчислении для классической логики высказываний следующие теоремы, пользуясь метатеоремой дедукции (и без использования метатеоремы дедукции): 
* $\vdash ((p \to q)\to p) \to ((p\to q) \to q)$
* $\vdash p \to ( (p\to q) \to q)$
* $\vdash (q \to r) \to ((p \to q) \to (p \to r))$
* $\vdash (p \to (q \to r)) \to (q \to (p \to r))$	
* $\vdash  (p \to q) \to ((q \to r) \to (p \to r))$



**Упражнение 7(\*).**  Методом аналитических таблиц докажите общезначимость следующих формул:
* $[\forall x \forall y \forall z \forall t ((xRy \wedge yRz) \to (xRt \vee tRz)) \wedge \forall x \neg xRx] \to  \forall x \forall y \forall z ((xRy \wedge yRz) \to xRz)$
* $[\forall x \forall y \forall z \forall t ((xRy \wedge yRz) \to (xRt \vee tRz)) \wedge \forall x \neg xRx] \to  \forall x \forall y (xRy \to \neg yRx)$
