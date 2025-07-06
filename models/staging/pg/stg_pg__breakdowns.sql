with source as (

    select * from {{ source('pg','breakdown') }}

),

staged as (

    select
    
        breakdown_id,
        breakdown_date as created_at,
        breakdown_type_id,
        car_id
    
    from source

)

select * from staged