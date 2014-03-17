SELECT count(*) AS "total teachers" FROM `teachers`
union all
SELECT count(*) AS "premium teachers" FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT count(*) AS "total schools" FROM `schools`
union all
SELECT count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT count(DISTINCT schools.district_id) AS "value" FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id
union all
SELECT count(DISTINCT schools.district_id) AS "value" FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT count(*) AS "value" FROM `scores`
union all
select count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))))
union all
SELECT count(*) AS "value" FROM `classrooms`
union all
select count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))))
union all
SELECT count(*) AS "value" FROM `materials`
union all
select count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))))
union all
select count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id
