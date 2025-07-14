with cars as (

    select

        car_id, 
        brand, 
        model, 
        category_text, 
        rate, 
        car_year, 
        vin, 
        licence_plate, 
        mileage

    from {{ ref('int_cars_joined_to_categories') }}

)

select * from cars
order by car_id