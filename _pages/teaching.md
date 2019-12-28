---
title: Teaching
layout: archive
permalink: /teaching/
collection: teaching
entries_layout: grid
classes: wide
og_image: "/assets/images/beachsolanum2.jpg"
---


<div class="grid__wrapper">
{% assign collection = 'teaching' %}
{% assign posts = site[collection] | reverse %}
{% for post in posts %}
{% include archive-single.html type="grid" %}
{% endfor %}
</div>
