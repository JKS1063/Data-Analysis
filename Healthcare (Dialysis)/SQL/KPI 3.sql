use dialysis_project;

select count(*) from dialysis_1;

select count(*) from dialysis_2;

show columns from dialysis_1;

show columns from dialysis_2;

select chain_organization, total_performance_score 
from dialysis_1 a right outer join dialysis_2 b
using(facility_name)
where Total_Performance_Score like 'No score';

select chain_organization, count(total_performance_score) as performance_score from 
(select chain_organization, total_performance_score 
from dialysis_1 a right outer join dialysis_2 b
using(facility_name)) as fct
where total_performance_score = 'No score'
group by Chain_Organization;