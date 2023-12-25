use dialysis_project;

show columns from dialysis_2;

show columns from dialysis_1 like '%_category_text';

select sum(case when Patient_Transfusion_category_text = 'As Expected' then 1 else 0 end) as Patient_Transfusion,
	   sum(case when Patient_hospitalization_category_text = 'As Expected' then 1 else 0 end) as Patient_hospitalization,
       sum(case when Patient_Survival_Category_Text = 'As Expected' then 1 else 0 end) as Patient_Survival,
       sum(case when Patient_Infection_category_text = 'As Expected' then 1 else 0 end) as Patient_Infection,
       sum(case when Fistula_Category_Text = 'As Expected' then 1 else 0 end) as Fitsula,
       sum(case when SWR_category_text = 'As Expected' then 1 else 0 end) as SWR, 
       sum(case when PPPW_category_text = 'As Expected' then 1 else 0 end) as PPPW
       from dialysis_1;