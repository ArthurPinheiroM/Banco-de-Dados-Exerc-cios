select 
	m.uf,
	c.nome,
	cur.nome,
	cu.enade,
	count(*) as totalca
from Cursos_Oferecidos_por_Campus cu 
inner join Curso cur on cu.id_curso = cur.id_curso
inner join campus c on cu.id_campus = c.id_campus
inner join Municipio m on c.id_municipio = m.id_municipio
group by  m.uf, c.nome, cur.nome, cu.enade
order


select 
	 m.uf, count(*) as cursos_ofertados_por_uf
from Cursos_Oferecidos_por_Campus  
inner join 
Municipio m on Cursos_Oferecidos_por_Campus.id_campus = m.id_municipio
group by m.uf 