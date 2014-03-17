select
  DISTINCT email
from
  teachers
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
inner join
  classrooms
on
  teachers.id = classrooms.teacher_id
inner join
  assessments
on
  classrooms.id = assessments.classroom_id
inner join
  scores
on
  assessments.id = scores.assessment_id
where
      (teachers.access_type = 0
  OR  (teachers.access_type IS NULL
  AND (schools.access_type = 0
  OR  schools.access_type IS NULL
  AND districts.access_type = 0)))
  AND (scores.created_at > '2014-01-20')




select
  DISTINCT email
from
  teachers
where
  (teachers.free_signup = 1) AND (teachers.created_at > '2014-01-21')