
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(alias='first_model') }}

with source_data as (

    select 1 as id, 'NY' as state, '2020-02-01 00:00:00.000'::timestamp as updated_at
    union all
    select 2 as id, 'NY' as state, '2020-01-01 00:00:00.000'::timestamp as updated_at
    union all
    select 3 as id, 'TX' as state, '2020-01-01 00:00:00.000'::timestamp as updated_at

)

select *, {{ var('my_first_variable') }} as my_first_variable
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
