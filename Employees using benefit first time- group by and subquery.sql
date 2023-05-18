//Task: to find the people whose first time using the education benefit was Nov 22.

select "employeeId"
from dwh."Transactions" t
where category = 'education-benefit' and state = 'confirmed'
group by "employeeId", category
having date_trunc('month', min("complete_Date")) = '2022-11-01'


select c."Parent Name", name, surname, email
from dwh.employees e
	left join dwh."Companies" c
	on e."companyId" = c."companyId"
where "userId" in(
	select "employeeId"
from dwh."Transactions" t
where category = 'education-benefit' and state = 'confirmed'
group by "employeeId", category
having date_trunc('month', min("complete_Date")) = '2022-11-01')