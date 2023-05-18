/*Gente a la que se le ofrece seguro médico*/
select "benefitsOffered", model_id 
from "input".models_types mt
where "benefitsOffered" like '%health-insurance%'

/*Con esta query obtenemos los userId de los empleados con transacciones de seguro médico este mes.*/
select distinct "employeeId" 
from dwh."Transactions" t
where date_trunc('month',"Date") = '2022-11-01' and category = 'health-insurance-benefit' and state = 'confirmed'


/* QUERY FINAL:
Usamos estas tablas para filtrar en nuestra query final.*/
select c."companyName", "name", surname, email
from dwh.employees e 
	left join dwh."Companies" c 
	on e."companyId" = c."companyId"
where
	e.state in('active', 'not-active')
and	e."modelId" in(
					select model_id 
					from "input".models_types mt
					where "benefitsOffered" like '%health-insurance%')
and e."userId" not in(
						select distinct "employeeId" 
						from dwh."Transactions" t
						where date_trunc('month',"Date") = '2022-11-01' and category = 'health-insurance-benefit' and state = 'confirmed')
and c."companyName" in(
						'Eurofirms Group',
						'CLICARS SPAIN',
						'Hipoges',
						'Tinkle',
						'Auto1',
						'Cooltra',
						'Loyal Guru',
						'BCD TRAVEL SPAIN',
						'Twenix',
						'WOW',
						'MICHELIN',
						'Crowe',
						'Monkey Taps',
						'PKF',
						'Inboundcycle',
						'Vitaance',
						'BNEXT',
						'Greening Group',
						'EINESA CABLE',
						'IMC TOYS SA.',
						'IMC TOYS SA.',
						'Lewis',
						'Sotysolar',
						'NOVICELL',
						'Softwareone',
						'Softwareone',
						'Paack',
						'Fundeen Spain',
						'Diusframi',
						'Dinero Gelt, S.L.',
						'Product School',
						'CARAVELO',
						'CAPTRAIN ESPAÑA',
						'ITK Systems Engineering',
						'Hawkers',
						'ThePowerMBA',
						'Haciendas BIO',
						'Haciendas BIO',
						'GVC GAESCO',
						'Carnovo',
						'Centum Digital',
						'AirDNA',
						'SmartProtection',
						'Sepiia',
						'COLKIE',
						'Deliverea',
						'Housell',
						'CACEIS FUND ADMINISTRATION SUCURSAL EN ESPAÑA',
						'Excelia',
						'The Hotels Network',
						'PLAYTOMIC',
						'INNOVAMAT EDUCATION',
						'La Tostadora',
						'Licuas',
						'ProtoPixel',
						'OneBeyond',
						'Tiko',
						'B9lab',
						'TECNICA DE FLUIDOS',
						'TECNICA DE FLUIDOS',
						'Kairos DS',
						'Kairos DS',
						'THOUGHTWORKS',
						'TRIPLEDOT STUDIOS BARCELONA SL',
						'Ontruck',
						'Stream Hatchet',
						'Carto',
						'VYGON',
						'Fever',
						'Cuponation',
						'Heura',
						'Barkibu',
						'ACENTO',
						'Byld Startups, S.L.',
						'Lodgify',
						'Vidoomy',
						'Influencity',
						'Ypsomed Software, S.L.U',
						'ImagineRight',
						'SiteGround Spain S.L.',
						'DESIGN AGENCY',
						'Momentum Data',
						'Galp Solar',
						'CACTUSSOFT SPAIN S.L.',
						'YUVOD',
						'Cobee',
						'PAY RETAILERS S.L.',
						'FREE NOW',
						'CODURANCE',
						'ONBEAMS',
						'ABG',
						'EPIC GAMES',
						'WILLIS RE GMBH',
						'Capboard',
						'Artificial Solutions Iberia')