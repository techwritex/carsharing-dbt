with source as (
    
    select * from {{ source('pg','ride') }}

),

staged as (

    select * from source

)

select * from staged