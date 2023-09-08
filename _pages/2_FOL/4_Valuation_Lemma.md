---
title: Леммы об означивании
category: Jekyll
layout: post
---

**Утверждение**. Если $x \not = y$, то $(v^x_a)^y_b = (v^y_b)^x_a$. 

**Утверждение**. Пусть $x \not \in FV(\Phi)$, тогда $M, v \models \Phi \Leftrightarrow \text{ для любого } a \in D: M, v^x_a \models \Phi $

**Утверждение**. Пусть $t$, $s$ – термы, $v$ – означивание, тогда $|t[s/x]|^v_M = x \mapsto |s|^v_M$

Поясним содержание этого утверждения на примере.

**Пример**. Пусть $t:= x + 2$, $s:= x + 1$, $v: x \mapsto 3$, тогда
* $t'= t[s/x]= (x + 1) + 2$
* $\|s\|^v = \|x+1\|^{x \mapsto 3} = 4$
* $v': x \mapsto 4 $
* $\|t\|^{v'}= \|x + 2\|^{x \mapsto 4} = 6$
* $\|t'\|^{v} = \| (x+1) + 2 \|^{x \mapsto 3} = 6 $

*Доказательство* 

**Утверждение**. Пусть $v':= v^x_{|t|^v}$, тогда
$$M, v \models \Phi [t/x] \iff M, v' \models \Phi$$

*Доказательство*. Если $x \not \in FV(\Phi)$, тогда $\Phi[t/x] = \Phi$ и оценка  $v$ никак не влияет на истинность $\Phi$ (по утв).

Рассмотрим случаи, в которых $x \in FV(\Phi)$.

Случай 1. $\Phi = P(t_1, \dots, t_n)$. Обозначим $t'_i:=t_i[t/x]$. Тогда

$M, v \models P(t_1, \dots, t_n)[t/x] \Leftrightarrow$
$M, v \models P(t'_1, \dots, t'_n) \Leftrightarrow$ 
$\langle  \|t'_1\|^v, \dots, \|t'_n\|^v \rangle \in P_M \Leftrightarrow$
$\langle  \|t_1\|^{v'}, \dots, \|t_n\|^{v'} \rangle \in P_M  \Leftrightarrow$ 
$M, v' \models P(t_1, \dots, t_n)$

$(1)$ верно в силу определения подстановки и $t'_i$, $(2)$ по определению условий истинности, $(3)$ по утв., $(4)$ по определению условий истинности.

Случай 2. Случаи для связок доказываются по предположению индукции.

Случай 3. $\Phi = \forall y \Psi$. $M, v \models \forall y \Psi [t/x] \Leftrightarrow$ (по определению условий истинности)

для любого $d \in D: M, v^y_d \models \Psi [t/x]  \Leftrightarrow$ (по предположению индукции)

для любого $d \in D: M, (v^y_d)^x_{\|t\|^v} \models \Psi \Leftrightarrow$ по утв. выше, поскольку $x \not = y $

для любого $d \in D: M, (v^x_{\|t\|^v})^y_d \models \Psi \Leftrightarrow$ по определению условий истинности

$M, v^x_{\|t\|^v} \models \forall y \Psi \Leftrightarrow$ по определению $v'$.

$M, v' \models \forall y \Psi$ 

Случай 4. $\Phi = \forall y \Psi$.  

: Доказывается аналогично случаю 3 (упражнение).
