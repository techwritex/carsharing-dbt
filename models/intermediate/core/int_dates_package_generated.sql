{{
	config(

		materialized='table'

    )
}}

with date_spine as (

	{{ dbt_utils.date_spine(
            datepart="day",
            start_date="cast('2023-01-01' as date)",
            end_date="cast('2024-01-01' as date)"
		)
	}}

),

calendar as (

	select

		date_day as date_id,
		date_day as full_date,
		extract(year from date_day) as year,
		extract(month from date_day) as month,
		extract(day from date_day) as day

	from date_spine

)

select * from calendar