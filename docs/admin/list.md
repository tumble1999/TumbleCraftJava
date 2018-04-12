---
layout: default
title: List
---
<table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">

<thead>
  <tr>
    <th>Page Url</th>
    <th>Redirect</th>
  </tr>

  </thead>
<tbody>
{% if site.href %}
<tr>
    <td>
        {% unless site.href == site.comingSoon %}<a href="{{ site.url }}">{% endunless %}
            Default
        {% unless site.href == site.comingSoon %}</a>{% endunless %}
    </td>
    <td>
    {% if site.href == site.comingSoon %}
    Coming Soon
    {% else %}
        {{ site.href }}
    {% endif %}
    </td>
  </tr>
{% endif %}
{% for item in site.documents %}
{% if item.href %}

<tr>
    <td>
        {% unless item.href == site.comingSoon %}<a href="{{ site.url }}{{ item.url }}">{% endunless %}
            {{ site.url }}{{ item.url }}
        {% unless item.href == site.comingSoon %}</a>{% endunless %}
    </td>
    <td>
    {% if item.href == site.comingSoon %}
    Coming Soon
    {% else %}
        {{ item.href }}
    {% endif %}
    </td>
  </tr>
  {% elsif item.hrefList %}
  <tr>
      <td>
          {% unless item.href == site.comingSoon %}<a href="{{ site.url }}{{ item.url }}">{% endunless %}
              {{ site.url }}{{ item.url }}
          {% unless item.href == site.comingSoon %}</a>{% endunless %}
      </td>
      <td>
      Multiple URLs
      </td>
    </tr>
{% endif %}
{% endfor %}
</tbody>
</table>
