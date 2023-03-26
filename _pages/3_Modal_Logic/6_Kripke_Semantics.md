---
title: Семантика Крипке 
category: Jekyll
layout: post
---


**Определение**. *Моделью Крипке* будем называть следуюущую структуру $M = (W, R, V)$, где
– $W \not = \varnothin$ - множетво возможных vbhjd
- $R \subseteq W \times W$ – отношени достижимости
- $V: Prop \to mathcal{P}(W)$ - функция оценки

**Определение**. Условия истинности формулы в модели Крипке.


## Упражнения

:green_book: **Упражнение**. Какие формулы истинны в отмеченной модели $M, w_1$ на <a href="#M">рис ниже</a>?
<details><summary> 1. $p$ </summary> $$M, w_1 \models p$$ </details>
<details><summary> 2. $q$ </summary>  $$M, w_1 \not \models q$$  </details>
<details><summary> 3. $p \to q$ </summary>  $$M, w_1 \not \models p \to q$$  </details>
<details><summary> 4. $q \to p$ </summary>  $$M, w_1 \models q \to p$$  </details>
<details><summary> 5. $\Diamond p$ </summary> $$M, w_1 \models \Diamond p$$  </details>
<details><summary> 6. $\Diamond q$ </summary> $$M, w_1 \models \Diamond q$$  </details>
<details><summary> 7. $\Box p$ </summary> $$M, w_1 \not \models \Box p$$  </details>
<details><summary> 8. $\Box q$ </summary> $$M, w_1 \models \Box q$$  </details>
<details><summary> 9. $\Box (p \to q)$ </summary> $$M, w_1 \models  \Box (p \to q)$$  </details>
<details><summary> 10. $\Box (q \to p)$ </summary> $$M, w_1 \not \models  \Box (q \to p)$$  </details>

<figure class="sign">
   
<img src="/logic-course/docs/assets/images/Kripke%20model.png" alt="" width="300" height=""> 
 
<figcaption> Модель $M, w_1$ </figcaption>

</figure>

<a name="M"></a> 

# Литература и дополнительные материалы:
- [https://plato.stanford.edu/entries/logic-modal/](https://plato.stanford.edu/entries/logic-modal/)
- ["3 Months of Modal Logics"/ канал "Carneades.org"](https://www.youtube.com/playlist?list=PLz0n_SjOttTfP_liEHPNCzvESZsh5eirP)
- ["Modal Logic"/ канал "Attic Philosophy"](https://www.youtube.com/watch?v=_kZLnqsIuMo&list=PLwSlKSRwxX0qXTZKnIT7l4_YAIWpJcZJ9)
- [Курс "Неклассические логики" 2022 (Т.Л. Яворская, МИАН)](https://www.mathnet.ru/php/conference.phtml?option_lang=rus&eventID=31&confid=2080)
