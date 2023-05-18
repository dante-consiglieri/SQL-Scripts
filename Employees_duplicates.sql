 select 
e."userId",
e."companyId",
e."name", 
e.surname,
c."companyName" 
from dwh.employees e
join dwh."Companies" c
		on e."companyId" = c."companyId"
where "userId" in
	(select "userId"
		from dwh.employees 
		group by "userId" 
		HAVING count(*) > 1)
order by e."userId"