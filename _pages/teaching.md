---
layout: archive
title: Teaching
permalink: /teaching/
author_profile: false

---
In this page you will find some examples of my recent workshops and ideas for classes. I currently teach BIOL171 at University of Hawai'i Mānoa that is the largest enrollment class in the department.


## Lectures
<div class="grid__wrapper">
{% assign collection = 'teaching' %}
{% assign posts = site[collection] | reverse %}
{% for post in posts %}
{% include archive-single.html type="grid" %}
{% endfor %}
</div>
