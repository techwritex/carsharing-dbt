with source as (

    select * from {{ source('pg','location') }}

),

staged as (

    select * from source

)

select * from staged