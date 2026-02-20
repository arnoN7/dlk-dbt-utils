{% test accepted_values_regex(model, column_name, pattern) %}

select {{ column_name }}
from {{ model }}
where {{ column_name }} is not null
  and {{ column_name }} not regexp '{{ pattern }}'

{% endtest %}
