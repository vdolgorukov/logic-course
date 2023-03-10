---
title: Аксиоматическое построение КЛП 
category: Jekyll
layout: post
---


## Исчисление КЛП

Аксиомные схемы:
*  (КЛВ) Все подстановочные примеры тавтологий КЛВ
*  ($\forall$) $\forall x \Phi x \to \Phi [t/x]$
*  ($\exists$) $\Phi[t/x] \to \exists x \Phi x$

Правила вывода:

MP 

$\underline{\Phi, \Phi \to \Psi}$ <br/>
$\Psi$

$R_\forall$

$\underline{\Phi \to \Psi}$ <br/>
$\Phi \to \forall x \Psi$, где $x \not \in FV(\Phi)$ 

$R_\exists$

$\underline{\Psi \to \Phi}$ <br/>
$\exists x \Psi \to \Phi$, где $x \not \in FV(\Phi)$


*Вопрос*.
<details><summary> Что будет, если убрать ограничение $x \not \in FV(\Phi)$?  </summary>   
   
Тогда мы могли бы доказать *некорректное* утверждение:  <br/>
1. $Sx \to Sx$ <br/>
2. $Sx \to \forall x Sx$ 

</details>


*Примеры* (кликабельно).

<details><summary> $\vdash \forall x (Sx \wedge Px ) \to \forall x Sx$  </summary>   

 <br/>   
1. $\forall x (Sx \wedge Px ) \to (Sx \wedge Px)$ – акс. $\forall$ <br/>
2. $(Sx \wedge Px) \to Sx$ – КЛВ <br/>
3. $\forall x (Sx \wedge Px ) \to Sx$ из 1, 3 по транзитивности <br/>
4. $\forall x (Sx \wedge Px ) \to \forall x Sx$  из 3 по ($R_\forall$)  <br/>
   
</details>

<details><summary> $\vdash \exists x \forall y Rxy \to  \forall y \exists x Rxy$  </summary>   

<br/>   
1. $\forall y Rxy \to Rxy$ – акс. $\forall$ <br/>
2. $Rxy \to \exists x Rxy$ – акс. $\exists$ <br/>
3. $\forall y Rxy \to  \exists x Rxy$ – из 1, 3 по транзитивности <br/>
4. $\exists x \forall y Rxy \to  \exists x Rxy$ – из 3. по ($R_\exists$) <br/>
5. $\exists x \forall y Rxy  \to  \forall y \exists x Rxy$ – из 4. по ($R_\forall$) <br/>
   
</details>
