---
layout: default
title: Categories
---

<ul>
{% for cat in site.categories %} 
	{% if cat[0] != 'blog' %} 
    <a name="{{ cat[0] }}"></a>
    <h3>{{ cat[0] }}({{ cat[1].size }})</h3>    
    {% for post in cat[1] %} 
    <li><h4><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a></h4></li>
	{% endfor %} 
   {% endif %} 
{% endfor %}
</ul>