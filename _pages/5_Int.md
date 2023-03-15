---
title: Интуиционистское исчисление высказываний
category: Jekyll
layout: post
---

# Исчисление int {#int}
**Исчисление $int$**

<a name="int"></a>

Аксиомные схемы:
* ($I_1$) $A \to (B \to A)$
* ($I_2$) $(A \to (B \to C)) \to ((A \to B) \to (A \to C))$	
* ($C_1$) $(A \wedge B) \to A$
* ($C_2$) $(A \wedge B) \to B$
* ($C_3$) $A \to (B \to (A \wedge B))$
* ($D_1$) $A \to (A \vee B)$
* ($D_2$) $A \to (B \vee A)$
* ($D_3$) $(A \to C) \to ((B \to C) \to  ((A \vee B) \to C))$
* ($N_1$) $(A \to B) \to ((A \to \neg B) \to \neg A)$
* ($N_1'$) $A \to ( \neg A  \to B)$

Правило вывода: modus ponens	

:grey_question: **Вопрос**. *Является ли исчисление $int$ дружественным к дедукции?*
<details> <summary> :pushpin: Ответ </summary>
Да, поскольку $int$ содержит аксиомные схемы ($I_1$), ($I_2$) и правило вывода modus ponens.
</details>



# Cемантика Крипке для интуиционистской логики

**Определение**. Моделью Крипке (для интуиционистской логики) будем называть тройку $M = (W, \leq, V)$, где
- $W$ – непустое множество возможных миров
- $\leq \; \subseteq W \times W$ – отношение достижимости, удовлетворяющее условиям рефлексивности и транзитивности (предпорядок)
- $V: Var \to \mathcal{P}(W)$ – функция оценки, удовлетворяющая условию монотонности: если $x \in V(p)$ и  $x \leq y$, то $y \in V(p)$	

**Определение**. Пусть $M = (W, \leq, V)$ – модель Крипке для интуиционистской логики, $x \in W$. Определим истинность формулы в мире: 
- $M, x \models p \iff x \in V(p)$
- $M, x \models \bot \iff  \text{ никогда }$
- $M, x \models \varphi \wedge \psi \iff M, x \models \varphi \text{ и }  M, x \models \psi$
- $M, x \models \varphi \vee \psi \iff M, x \models \varphi \text{ или }  M, x \models \psi$
- $M, x \models \varphi \to\psi \iff \forall y \; (x \leq y \Rightarrow  (M, y \models \varphi \Rightarrow M, y \models \psi))$

 
**Упражнение**. Опишите условия истинности для $\neg \varphi$, понимая отрицание как синтаксическое сокращение $\neg \varphi:= \varphi \to \bot$. 


В исчислении [int](#int)
