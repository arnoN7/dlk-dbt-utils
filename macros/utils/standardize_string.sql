{% macro standardize_string(column, case=none) %}
    {% if case == 'upper' %}
        upper(nullif(trim({{ column }}), ''))
    {% elif case == 'lower' %}
        lower(nullif(trim({{ column }}), ''))
    {% else %}
        nullif(trim({{ column }}), '')
    {% endif %}
{% endmacro %}
