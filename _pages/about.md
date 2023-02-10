---
title: Логика предикатов первого порядка 
author: Tao He
date: 2022-02-04
category: Jekyll
layout: post
---


# Глава 

## Раздел 
Язык 
$\Phi::= P(t_1, \dots, t_n) \mid \neg \Phi \mid (\Phi \wedge \Phi) \mid (\Phi \vee  \Phi ) \mid (\Phi \to \Phi ) \mid \exists x \Phi \mid \forall x \Phi $


### Подраздел

$M, v \models P(t_1, \dots, t_n) \iff \langle \|t_1\|^v_M, \dots, \|t_n\|^v_M \rangle \in P_M$
