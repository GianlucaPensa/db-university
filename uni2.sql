use db_university;

select *
from students s 
where year(date_of_birth) = 1990;

select *
from courses c
where cfu > 10;

select *
from students s
where timestampdiff(year, `date_of_birth`, curdate()) > 30;

select *
from degrees d 
where `level` = "magistrale";

select count(id) as num_dipartimenti
from departments d;

select count(id) as num_insegnanti_senza_telefono
from teachers t 
where isnull(phone);

select year(enrolment_date) , count(*) as iscrizioni_annue
from students s
group by year (enrolment_date);

select avg(VOTE), exam_id 
from exam_student es 
group by exam_id;

select count(*) as corsi_per_dipartimento
from degrees d 
group by department_id;

select s.name , s.surname
from degrees d
inner join students s 
on d.id = s.degree_id 
where d.name = "Corso di Laurea in Economia";

select *
from departments d 
inner join degrees d2 
on d.id = d2.department_id
where `level` = "magistrale"
having d.name = "Dipartimento di Neuroscienze";

select t.name, t.surname, ct.course_id
from teachers t 
inner join course_teacher ct
inner join courses c 
on t.id = ct.teacher_id 
where t.name = "Fulvio"
and t.surname = "Amato";

select s.id as student_id, s.surname as student_surname, s.name as name, d.name as course_name, d.`level` as course_level
from students s
inner join degrees d
on s.degree_id = d.id
inner join departments d2 
on d.department_id = d2.id 
order by s.surname, s.name; 








