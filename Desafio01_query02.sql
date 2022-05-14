select
prof.prof_id as PROFESSOR_ID,  prof.teachingability AS CAPACIDADE_ENSINO, count(registration.course_id) as PROF_QTDE_CURSOS 
from RA 
inner join prof on prof.prof_id = RA.prof_id
inner join student on student.student_id = RA.student_id
inner join registration on registration.student_id = student.student_id
group by 1,2