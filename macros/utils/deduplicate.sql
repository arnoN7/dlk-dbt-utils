{% macro deduplicate(partition_col, order_col) %}
    row_number() over (partition by {{ partition_col }} order by {{ order_col }})
{% endmacro %}
