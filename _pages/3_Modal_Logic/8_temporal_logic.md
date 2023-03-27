---
title: Темпоральные логики 
category: Jekyll
layout: post
---

# Временная логика

# Язык темпоральной логики
Язык темпоральной логики $\LL_{t}$ порождается следующей грамматикой:

$$\varphi  ::= p \mid \neg \varphi \mid (\varphi \wedge \varphi ) \mid G \varphi \mid H \varphi$$

где $p \in Prop$.
}

# Семантика временных операторов 
$M=(T, <, V)$ 

- $M, t \models F\varphi$ е.т.е. $\exists t' (t < t' \text{ и }  \M, t' \models \varphi)$
- $M, t \models G \varphi$ е.т.е. $\forall t' (t < t' \Rightarrow \M, t' \models \varphi)$
- $M, t \models P \varphi$ е.т.е. $\exists t' (t' < t \text{ и }  \M, t' \models \varphi)$
- $M, t \models H \varphi$ е.т.е. $\forall t' (t' < t \Rightarrow \M, t' \models \varphi)$	


## $K_t$ и ее расширения 

**Упражнение**. Найдите доказательства для следующих теорем:
- $\vdash_{K_t} H (p \wedge q) \to Hp$
- $\vdash_{K_t} G (p \wedge q) \to (G p \wedge Gq)$
- $\vdash_{K_t} FHp \to GPp$
- $\vdash_{K_t} PGp \to HFp$



<figure class="sign">
   
<img src="/logic-course/docs/assets/images/Nest.png" alt="" width="500" height=""> 
 
<figcaption> Модальности логики Q.t </figcaption>

</figure>
