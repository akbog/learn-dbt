{% snapshot first_model_snapshot %}

{{
    config(
        unique_key='id',
        target_schema='snapshots',
        target_database='analytics',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

select * from {{ ref('my_first_dbt_model') }}

{% endsnapshot %}