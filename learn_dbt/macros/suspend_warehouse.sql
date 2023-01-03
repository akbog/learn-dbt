{% macro suspend_warehouse(warehouse_name) %}

{% set sql %}
    ALTER WAREHOUSE {{ warehouse_name }} SUSPEND;
{% endset %}

{% set table = run_query(sql) %}
{% do table.print_table() %}

{% endmacro %}