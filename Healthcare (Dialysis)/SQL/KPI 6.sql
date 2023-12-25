use dialysis_project;

select * 
from information_schema.columns
where column_name like '%payment%';

select 
	concat(round(avg(nullif(PY2020_Payment_Reduction_Percentage, "No Reduction")),2), '%') as Average_payment_reduction_rate 
    from dialysis_2;
