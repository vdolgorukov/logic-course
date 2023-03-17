---
title: Quiz
category: Jekyll
layout: post
---

{% assign q1_text = "This is an awesome template!" %}
{% assign q1_choices = "True, False" | split: ', ' %}
{% assign q1_feedbacks = "Correct!  This is an awesome template., How can you say that?!" | split: ', ' %}
{% assign q1_correct = 0 %}
{% include mc-quiz.html text=q1_text choices=q1_choices answer=q1_correct feedback=q1_feedbacks %}
