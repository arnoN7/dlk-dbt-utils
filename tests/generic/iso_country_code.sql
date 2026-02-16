{% test iso_country_code(model, column_name) %}

select {{ column_name }}
from {{ model }}
where {{ column_name }} is not null
  and (
    length({{ column_name }}) != 2
    or {{ column_name }} != upper({{ column_name }})
    or not regexp_like({{ column_name }}, '^[A-Z]{2}$')
  )

{% endtest %}
