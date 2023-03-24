---
title: Аксиоматическое построение КЛП 
category: Jekyll
layout: post
---


## Исчисление КЛП

> **Исчисление $FOL$** <a name="FOL"></a>
> 
> Аксиомные схемы:
> 
> * (КЛВ) Все подстановочные примеры тавтологий КЛВ
> * ($\forall$) $\forall x \Phi  \to \Phi [t/x]$
> * ($\exists$) $\Phi[t/x] \to \exists x \Phi $
> 
> Правила вывода:
>
> MP 
>
> $\underline{\Phi, \Phi \to \Psi}$ <br/>
> $\Psi$
> 
> $R_\forall$
> 
> $\underline{\Phi \to \Psi}$ <br/>
> $\Phi \to \forall x \Psi$, где $x \not \in FV(\Phi)$ 
> 
> $R_\exists$
> 
> $\underline{\Psi \to \Phi}$ <br/>
> $\exists x \Psi \to \Phi$, где $x \not \in FV(\Phi)$
{: .bq-with-class}


<details> <summary> :question: Что будет, если убрать ограничение $x \not \in FV(\Phi)$? </summary>   

<br/>  
Тогда наше исчисление "сломается", поскольку мы сможем доказать доказать некорректное утверждение: <br/>
1. $Sx \to Sx$  – КЛВ  <br/>
2. $Sx \to \forall x Sx$ – по неправильной версии правила Бернайса   
   
</details>


**Пример**. $\vdash \forall x (Sx \wedge Px ) \to \forall x Sx$ 

1. $\forall x (Sx \wedge Px ) \to (Sx \wedge Px)$ – акс. $\forall$ 
2. $(Sx \wedge Px) \to Sx$ – КЛВ  
3. $\forall x (Sx \wedge Px ) \to Sx$ из 1, 3 по транзитивности 
4. $\forall x (Sx \wedge Px ) \to \forall x Sx$  из 3 по ($R_\forall$) 

   
**Пример**.  $\vdash \exists x \forall y Rxy \to  \forall y \exists x Rxy$

1. $\forall y Rxy \to Rxy$ – акс. $\forall$ 
2. $Rxy \to \exists x Rxy$ – акс. $\exists$ 
3. $\forall y Rxy \to  \exists x Rxy$ – из 1, 3 по транзитивности 
4. $\exists x \forall y Rxy \to  \exists x Rxy$ – из 3. по ($R_\exists$) 
5. $\exists x \forall y Rxy  \to  \forall y \exists x Rxy$ – из 4. по ($R_\forall$) 
