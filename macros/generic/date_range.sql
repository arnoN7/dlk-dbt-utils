{% test date_range(model, column_name, min_date=none, max_date=none) %}

select {{ column_name }}
from {{ model }}
where {{ column_name }} is not null
  {% if min_date %}
  and {{ column_name }} < '{{ min_date }}'
  {% endif %}
  {% if max_date %}
  and {{ column_name }} > '{{ max_date }}'
  {% endif %}

{% endtest %}
