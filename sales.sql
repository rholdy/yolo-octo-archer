-- Last Login by DistAdmin

select first_name, last_name, last_login_at from teachers
inner join
schools on teachers.school_id = schools.id
inner join
districts on schools.district_id = districts.id
where
districts.id = 5129 and (roles_mask & 2 != 0)

-- Teacher Logins by school

select
schools.name as 'school',
count(*)
from
teachers
inner join
schools
on
schools.id = teachers.school_id
where
schools.district_id = 5129 AND
teachers.last_login_at > '2014-01-01'
group by
schools.name

-- total teachers

select
count(*)
from
teachers
inner join
schools
on
schools.id = teachers.school_id
where
schools.district_id = 5129


-- activated teachers

select
count(*)
from
teachers
inner join
schools
on
schools.id = teachers.school_id
where
schools.district_id = 5129
and teachers.state = "active"


-- teachers logged in by date

select
count(*)
from
teachers
inner join
schools
on
schools.id = teachers.school_id
where
schools.district_id = 5129 AND
teachers.last_login_at > '2014-01-01'



-- teachers who have scored

select
    count(distinct teachers.id) AS 'value'
FROM
    `scores`
        inner join
    assessments ON assessments.id = scores.assessment_id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
    districts.id = 5129


-- teachers who have scored by date

select
    count(distinct teachers.id) AS 'value'
FROM
    `scores`
        inner join
    assessments ON assessments.id = scores.assessment_id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
    districts.id = 5129 and scores.created_at > '2014-01-01'


-- Standards Scored

select
    schools.name as 'teacher id',
    count(*) as 'count'
FROM
    `scores`
        inner join
    assessments ON assessments.id = scores.assessment_id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
  districts.id = 5129
group by
schools.name



-- trackers with a score in the last two weeks

select
  schools.name as 'school',
  count(DISTINCT classrooms.id)
FROM
  scores
    inner join
  assessments on scores.assessment_id = assessments.id
    inner join
    classrooms on assessments.classroom_id = classrooms.id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
    districts.id = 5129 and (scores.created_at > "2014-01-01")
group by
schools.name


-- total trackers by school

select
  schools.name as 'school',
  count(DISTINCT classrooms.id)
FROM
  scores
    inner join
  assessments on scores.assessment_id = assessments.id
    inner join
    classrooms on assessments.classroom_id = classrooms.id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
    districts.id = 5129
group by
schools.name




-- Assessments used in trackers

select
    schools.name as 'school',
    count(distinct materials.document_id) as 'count'
 FROM
    materials
        inner join
    assessments on assessments.material_id = materials.id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
  districts.id = 5129
group by
schools.name



-- SCORED ASSESSMENTS

select
    schools.name as 'school',
    count(distinct assessments.material_id) as 'count'
FROM
    scores
        inner join
    assessments on assessments.id = scores.assessment_id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
        inner join
    schools ON schools.id = teachers.school_id
        inner join
    districts ON districts.id = schools.district_id
where
  districts.id = 5129
group by
schools.name





















