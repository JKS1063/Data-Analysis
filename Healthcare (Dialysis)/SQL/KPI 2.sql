use dialysis_project;


select * from dialysis_1 limit 10;

select profit_or_non_profit, count(profit_or_non_profit) as count from dialysis_1
-- where profit_or_non_profit is null
group by profit_or_non_profit;