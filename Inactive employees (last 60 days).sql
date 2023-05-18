select
e."companyId",
c."companyName",
erbe."userId",
"name",
surname,
erbe.email,
"Addressable Date Employee",
"Active Date Employee"
from dwh.employees e
	left join staging_area.employees_records_by_employee erbe 
	on e."userId" = erbe."userId"
		left join dwh."Companies" c
		on e."companyId" = c."companyId"
where "Active Date Employee" is not null and "Exit Date Employee" is null and e."companyName" is not null and erbe."userId" not in
	(select distinct "employeeId" userId
		from dwh."Transactions" t
		where current_date::date - "Date"::date <= 60 and state = 'confirmed')
order by c."companyName"