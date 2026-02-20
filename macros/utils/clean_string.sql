{% macro clean_string(column) %}
    nullif(trim({{ column }}), '')
{% endmacro %}
