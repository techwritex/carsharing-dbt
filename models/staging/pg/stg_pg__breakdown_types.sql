with source as (

    select * from {{ source('pg','breakdown_type') }}

),

staged as (

    select * from source

)

select * from staged