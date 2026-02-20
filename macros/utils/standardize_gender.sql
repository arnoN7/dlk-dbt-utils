{% macro standardize_gender(column) %}
    case upper(trim({{ column }}))
        when 'M' then 'Male'
        when 'F' then 'Female'
        when 'N' then 'Not specified'
        else 'Not specified'
    end
{% endmacro %}
