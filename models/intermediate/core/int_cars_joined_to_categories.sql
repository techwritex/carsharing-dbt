with cars as (

    select 

        car_id, 
        brand, 
        model, 
        category_id, 
        car_year, 
        vin, 
        licence_plate, 
        mileage

    from {{ ref('stg_pg__cars') }}

),

categories as (

    select

        category_id, 
        category_text, 
        rate

    from {{ ref('stg_pg__categories') }}

), 

cars_joined_to_categories as (

    select

        cars.car_id, 
        cars.brand, 
        cars.model, 
        categories.category_text, 
        categories.rate,
        cars.car_year, 
        cars.vin, 
        cars.licence_plate, 
        cars.mileage

    from cars

    left join categories
    on cars.category_id = categories.category_id

)

select * from cars_joined_to_categories