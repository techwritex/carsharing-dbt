with calendar as (

	select

		date_id,
		full_date,
		year,
		month,
		day

	from  {{ ref('int_dates_package_generated') }}

)

select * from calendar