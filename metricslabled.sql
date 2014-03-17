-- Premium Teachers

select
    count(teachers.id)
from
    teachers
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on districts.id = schools.district_id
where
  teachers.access_type = 0 or schools.access_type = 0 or districts.access_type = 0


-- Active Premium Teachers

SELECT "premium_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE ((teachers.free_signup=0 AND (teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0)))) AND (`teachers`.`state` = "active"))


-- Another Premium Teacher Query

SELECT
    count(*)
FROM
    `teachers`
        INNER JOIN
    `schools` ON `schools`.id = `teachers`.school_id
        INNER JOIN
    `districts` ON `districts`.id = `schools`.district_id
WHERE
    ((teachers.free_signup = 0
        AND (teachers.access_type = 0
        OR (teachers.access_type IS NULL
        AND (schools.access_type = 0
        OR schools.access_type IS NULL
        AND districts.access_type = 0))))
        AND (`teachers`.`state` = 'active'))


-- Pins Uploads Trackers Teachers Schools and Districts, Cumulative Totals

SELECT "scores" AS "name", count(id) AS "value" from `scores`
        union all
        SELECT "pins" AS "name", count(id) AS "value" from `pins`
        union all
        SELECT "materials" AS "name", count(id) AS "value" from `materials`
        union all
        SELECT "classrooms" AS "name", count(id) AS "value" from `classrooms`
        union all
        SELECT "teachers" AS "name", count(id) AS "value" from `teachers`
        union all
        SELECT "schools" AS "name", count(id) AS "value" from `schools`
        union all
        SELECT "districts" AS "name", count(id) AS "value" from `districts`
        union all
        SELECT "premium_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE ((teachers.free_signup=0 AND (teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0)))) AND (`teachers`.`state` = "active"))
        union all
        SELECT "premium_districts" AS "name", count(*) AS "value" FROM `districts` WHERE ((districts.premium_type = 1))
        union all
        SELECT "todays_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) = DATE(NOW()))
        union all
        SELECT "todays_schools" AS "name", count(*) AS "value" FROM `schools` WHERE (DATE(created_at) = DATE(NOW()))
        union all
        SELECT "todays_districts" AS "name", count(*) AS "value" FROM `districts` WHERE (DATE(created_at) = DATE(NOW()))
        union all
        SELECT "todays_free_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) = DATE(NOW())) AND (teachers.free_signup=1 OR (teachers.access_type=1 OR (teachers.access_type IS NULL AND (schools.access_type=1 OR schools.access_type IS NULL AND districts.access_type=1))))


-- Uploads by Date

select
  DATE(created_at),
  count(id)
from
  materials
group by DATE(created_at)


-- Uploads by Premium Users

select
  DATE(materials.created_at),
  count(materials.id)
from
  materials
inner join
  teachers
on
  teachers.id = materials.teacher_id
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
where
  ((teachers.free_signup = 0
        AND (teachers.access_type = 0
        OR (teachers.access_type IS NULL
        AND (schools.access_type = 0
        OR schools.access_type IS NULL
        AND districts.access_type = 0))))
        AND (`teachers`.`state` = 'active'))
group by
  DATE(materials.created_at)


-- Total Uploads

select
  DATE(materials.created_at),
  count(materials.id)
from
  materials
group by
  DATE(materials.created_at)


-- Premium Trackers

select
  DATE(classrooms.created_at),
  count(classrooms.id)
from
  classrooms
inner join
  teachers
on
  teachers.id = classrooms.teacher_id
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
where
  ((teachers.free_signup = 0
        AND (teachers.access_type = 0
        OR (teachers.access_type IS NULL
        AND (schools.access_type = 0
        OR schools.access_type IS NULL
        AND districts.access_type = 0))))
        AND (`teachers`.`state` = 'active'))
group by
  DATE(classrooms.created_at)


-- Total Trackers

select
  DATE(classrooms.created_at),
  count(classrooms.id)
from
  classrooms
group by
  DATE(classrooms.created_at)


-- Premium Scores

select
  DATE(scores.created_at),
  count(scores.id)
from
  scores
inner join
  assessments
on
  assessments.id = scores.assessment_id
inner join
  classrooms
on
  classrooms.id = assessments.classroom_id
inner join
  teachers
on
  teachers.id = classrooms.teacher_id
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
where
  ((teachers.free_signup = 0
        AND (teachers.access_type = 0
        OR (teachers.access_type IS NULL
        AND (schools.access_type = 0
        OR schools.access_type IS NULL
        AND districts.access_type = 0))))
        AND (`teachers`.`state` = 'active'))
group by
  DATE(scores.created_at)


-- Total Scores

select
  DATE(scores.created_at),
  count(scores.id)
from
  scores
group by
  MONTH(scores.created_at), YEAR(scores.created_at)

  -- Uploads by District ID

  select
  Date(materials.created_at),
  count(materials.id)
from
  materials
inner join
  teachers
on
  teachers.id = materials.teacher_id
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
where
  districts.id = 682
group by
  Month(materials.created_at), Year(materials.created_at)


  -- Scores by District

  select
  DATE(scores.created_at),
  count(scores.id)
from
  scores
inner join
  assessments
on
  assessments.id = scores.assessment_id
inner join
  classrooms
on
  classrooms.id = assessments.classroom_id
inner join
  teachers
on
  teachers.id = classrooms.teacher_id
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
where
  districts.id = 682
group by
  Month(scores.created_at), Year(scores.created_at)

-- New Teachers by District

  select
    date(teachers.created_at),
    count(teachers.id)
from
    teachers
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on districts.id = schools.district_id
where
  districts.id = 682
group by
  Month(teachers.created_at), Year(teachers.created_at)


  -- Trackers by District


select
  DATE(classrooms.created_at),
  count(classrooms.id)
from
  classrooms
inner join
  teachers
on
  teachers.id = classrooms.teacher_id
inner join
  schools
on
  schools.id = teachers.school_id
inner join
  districts
on
  districts.id = schools.district_id
where
  districts.id = 6733
group by
  Month(classrooms.created_at), Year(classrooms.created_at)





  -- Bubble Score User Emails



  select
    distinct teachers.email
FROM
    `scores`
        inner join
    classroom_assignments ON classroom_assignments.id = scores.classroom_assignment_id
        inner join
    classrooms ON classrooms.id = classroom_assignments.classroom_id
        inner join
    teachers ON teachers.id = classrooms.teacher_id
where
    scores.created_at > '2013-08-01'