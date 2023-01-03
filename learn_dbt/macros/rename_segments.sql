{% macro rename_segments(column_name) %}
    CASE
        WHEN {{column_name}} in ('BUILDING', 'HOUSEHOLD', 'FURNITURE') THEN 'HOME'
        WHEN {{column_name}} in ('AUTOMOBILE', 'MOTORCYCLE', 'TRUCK') THEN 'VEHICLE'
        WHEN {{column_name}} in ('ELECTRONICS', 'COMPUTER', 'PHONE') THEN 'TECH'
        ELSE 'OTHER'
    END
{% endmacro %}