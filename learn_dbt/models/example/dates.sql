{{ config(materialized='incremental', unique_key='d_date') }}

Select *
FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.DATE_DIM
WHERE d_date <= current_date

{% if is_incremental() %}
    and d_date > (select max(d_date) from {{ this }})
{% endif %}