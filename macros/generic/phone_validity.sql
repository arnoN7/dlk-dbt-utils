{% test phone_validity(model, column_name) %}

select {{ column_name }}
from {{ model }}
where {{ column_name }} is not null
  and not regexp_like({{ column_name }}, '^[+]?[0-9\\s\\-\\.\\(\\)]{7,20}$')

{% endtest %}
