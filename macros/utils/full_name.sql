{% macro full_name(first_name, last_name, separator=' ') %}
    nullif(trim(coalesce({{ first_name }}, '') || '{{ separator }}' || coalesce({{ last_name }}, '')), '')
{% endmacro %}
