with source as (

    select * from {{ source('pg','service_type') }}

),

staged as (

    select * from source

)

select * from staged