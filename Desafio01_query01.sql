select 
prof.prof_id as PROFESSOR_ID,  prof.teachingability AS CAPACIDADE_ENSINO, count(prof.prof_id) as QTDE_ALUNOS 
from RA 
inner join prof on prof.prof_id = RA.prof_id
inner join student on student.student_id = RA.student_id
group by 1,2