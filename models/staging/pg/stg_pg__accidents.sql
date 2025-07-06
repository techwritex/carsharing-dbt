with source as (

    select * from {{ source('pg','accident') }}

),

staged as (

    select 
    
        accident_id,
        accident_text,
        accident_date as created_at,
        car_id,
        ride_id

    from source

)

select * from staged