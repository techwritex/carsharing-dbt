with source as (
    
    select * from {{ source('pg','customer') }}

),

staged as (

    select
    
        customer_id,
        first_name,
        last_name,
        gender,
        driving_licence_number,
        driving_licence_valid_from,
        phone,
        email,
        last_update as updated_at   
    
    from source

)

select * from staged