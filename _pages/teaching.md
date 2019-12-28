---
title: Teaching
layout: archive
permalink: /teaching/
collection: teaching
entries_layout: grid
classes: wide
og_image: "/assets/images/beachsolanum2.jpg"
---

[Continuous Time Markov Chain model for discrete traits](/teaching/SSEmodels.md)

[Evidential statistics application](/teaching/evidence/)

[SSE models](/teaching/SDD/)


<div class="grid__wrapper">
{% assign collection = 'teaching' %}
{% assign posts = site[collection] | reverse %}
{% for post in posts %}
{% include archive-single.html type="grid" %}
{% endfor %}
</div>
