{% macro cast_amount(column, precision=18, scale=2) %}
    cast({{ column }} as decimal({{ precision }}, {{ scale }}))
{% endmacro %}
