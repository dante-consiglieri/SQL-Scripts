select e.email, e.state, cdd."cardId (cards)" MP, erbe."Exit Date Employee", char_length(cdd."cardId (cards)") 
from dwh.employees e
	left join staging_area.employees_records_by_employee erbe 
	on e."userId" = erbe."userId" 
	left join dwh."Cards(dif-duplicates)" cdd 
	on e."userId" = cdd."employeeId (cards)" 
where e.state in('removed', 'blocked')