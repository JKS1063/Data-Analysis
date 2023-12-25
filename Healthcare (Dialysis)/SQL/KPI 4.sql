use dialysis_project;

select 
	Chain_Organization, count(No_of_dialysis_stations) as Dialysis_Locations, sum(No_of_dialysis_stations) as Total_Dialysis_Stations,
    max(No_of_dialysis_stations) as Maximum_Stations, min(No_of_dialysis_stations) as Minimum_stations,
    round(avg(No_of_dialysis_stations),2) as Average_stations
    from dialysis_1
	group by Chain_Organization;