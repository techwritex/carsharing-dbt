with source as (

    select * from {{ source('pg','category') }}

),

staged as (

    select * from source

)

select * from staged