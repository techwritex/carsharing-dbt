with source as (

    select * from {{ source('pg','car') }}

),

staged as (

    select * from source

)

select * from staged