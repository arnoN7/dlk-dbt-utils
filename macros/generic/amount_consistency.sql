{% test amount_consistency(model, column_name, components, tolerance=0.01) %}

select {{ column_name }}
from {{ model }}
where abs({{ column_name }} - ({{ components | join(' + ') }})) > {{ tolerance }}

{% endtest %}
