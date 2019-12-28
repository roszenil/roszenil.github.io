---
title: Teaching
layout: collection
permalink: /teaching/
collection: teaching
entries_layout: grid
classes: wide
---

<div class="grid__wrapper">
{% assign collection = 'teaching' %}
{% assign posts = site[collection] | reverse %}
{% for post in posts %}
{% include archive-single.html type="grid" %}
{% endfor %}
</div>
