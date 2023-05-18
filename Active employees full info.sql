select
e."companyId",
c."companyName",
erbe."userId",
e."name",
e.surname,
erbe.email,
"Addressable Date Employee",
"Active Date Employee",
"Exit Date Employee" 
from staging_area.employees_records_by_employee erbe
	join dwh.employees e
	on erbe."userId" = e."userId"
		join dwh."Companies" c
		on e."companyId" = c."companyId"
where "Active Date Employee" is not null and "Exit Date Employee" is null
order by c."companyName"