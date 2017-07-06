---
layout: default
title: Tags
---

<ul>
{% for tag in site.tags %} 
	<a name="{{ tag[0] }}"></a>
    <h3>{{ tag[0] }}({{ tag[1].size }})</h3>
	
	{% for post in tag[1] %}
		<li><h4><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a></h4></li>
	{% endfor %}
{% endfor %}
</ul>