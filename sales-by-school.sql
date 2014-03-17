-- trackers, assessments, logins, scores, by teacher

select
teachers.first_name as 'first_name',
teachers.last_name as 'last_name',
teachers.last_login_at as 'last login',
count(distinct classrooms.id) as 'trackers',
count(distinct assessments.material_id) as 'materials using',
count(*) as 'standards scored'
FROM
    scores
        inner join
    assessments on assessments.id = scores.assessment_id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
where
teachers.school_id = 1196
group by
teachers.last_name

-- trackers, assessments, logins, scores, by teacher with dates

select
teachers.first_name as 'first_name',
teachers.last_name as 'last_name',
teachers.last_login_at as 'last login',
count(distinct classrooms.id) as 'trackers',
count(distinct assessments.material_id) as 'materials using',
count(*) as 'standards scored'
FROM
    scores
        inner join
    assessments on assessments.id = scores.assessment_id
        inner join
    classrooms ON classrooms.id = assessments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
where
teachers.school_id = 1196 and scores.created_at > "2013-08-30"
group by
teachers.last_name