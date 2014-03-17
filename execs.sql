-- select
-- districts.name,
-- count(distinct custom_id)
-- from
-- students
-- inner join
-- classrooms on students.classroom_id = classrooms.id
-- inner join
-- teachers on classrooms.teacher_id = teachers.id
-- inner join
-- schools on teachers.school_id = schools.id
-- inner join
-- districts on schools.district_id = districts.id
-- group by
-- districts.id


-- select
-- count(distinct custom_id)
-- from
-- students
-- inner join
-- classrooms on students.classroom_id = classrooms.id
-- inner join
-- teachers on classrooms.teacher_id = teachers.id
-- inner join
-- schools on teachers.school_id = schools.id
-- inner join
-- districts on schools.district_id = districts.id
-- where
-- districts.id = 1159

-- Select Count of Students

select
districts.name,
count(distinct students.custom_id)
from
scores
inner join
students on scores.student_id = students.id
inner join
classrooms on students.classroom_id = classrooms.id
inner join
teachers on classrooms.teacher_id = teachers.id
inner join
schools on teachers.school_id = schools.id
inner join
districts on schools.district_id = districts.id
where
scores.created_at > "2013-07-01"
group by
districts.id