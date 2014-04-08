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




-- Killer Trey Query w/date


SELECT count(*) AS "total teachers" FROM `teachers` where teachers.created_at > "2014-03-12"
union all
SELECT count(*) AS "premium teachers" FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0)))) and teachers.created_at > "2014-03-12"
union all
select count(*) AS 'public assessments' from materials where (privacy_level = 0) and (collection_id is null) and materials.created_at > "2014-03-12"
union all
select count(*) as 'private assessments' from materials where (privacy_level > 0) or (collection_id is not null) and materials.created_at > "2014-03-12"
union all
select count(*) as 'solution tree' from teachers where hear_about_us like "%solution%" and teachers.created_at > "2014-03-12"
union all
select count(*) as 'fellow teachers' from teachers where hear_about_us like "%fellow teacher%" and teachers.created_at > "2014-03-12"
union all
select count(*) as 'cc app' from teachers where hear_about_us like "%common core app%" and teachers.created_at > "2014-03-12"
union all
select count(*) as 'social media' from teachers where hear_about_us like "%social media%" and teachers.created_at > "2014-03-12"




-- killer trey query total

SELECT count(*) AS "total teachers" FROM `teachers`
union all
SELECT count(*) AS "premium teachers" FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
select count(*) AS 'public assessments' from materials where (privacy_level = 0) and (collection_id is null)
union all
select count(*) as 'private assessments' from materials where (privacy_level > 0) or (collection_id is not null)
union all
select count(*) as 'solution tree' from teachers where hear_about_us like "%solution%"
union all
select count(*) as 'fellow teachers' from teachers where hear_about_us like "%fellow teacher%"
union all
select count(*) as 'cc app' from teachers where hear_about_us like "%common core app%"
union all
select count(*) as 'social media' from teachers where hear_about_us like "%social media%"


-- count of item bank assessments by subject and bank

select
materials.subject_id,
count(materials.id)
from
materials
inner join
item_materials on materials.id = item_materials.material_id
inner join
items on items.id = item_materials.item_id
inner join
qti_items on items.qti_item_id = qti_items.id
where qti_items.bank_id = 1
group by materials.subject_id


-- MONTHLY REPORT

-- Total Sign Ups
select DAY(teachers.created_at), count(*)
from teachers where (teachers.created_at like '2014-03-%')
group by DATE(teachers.created_at)

-- Premium Sign Ups
select DAY(teachers.created_at) as 'day', count(*) as 'premium'
FROM `teachers` INNER JOIN `schools` ON schools.id = teachers.school_id INNER JOIN `districts` ON districts.id = schools.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0)))) and (teachers.created_at like '2014-03-%')
group by DATE(teachers.created_at)

-- Public Assessments
select DAY(materials.created_at) as 'day', count(*) as 'common'
from materials where (privacy_level = 0) and (collection_id is null) and (materials.created_at like '2014-03-%')
group by DATE(materials.created_at)

-- Private Assessments
select DAY(materials.created_at) as 'day', count(*) as 'common'
from materials where ((privacy_level > 0) or (collection_id is not null)) and (materials.created_at like '2014-03-%')
group by DATE(materials.created_at)

-- Mastery
select DAY(scores.created_at) as 'day', count(*) as 'count'
from scores
where
state = 'mastery' and
scores.created_at like '2014-03-%'
group by
date(scores.created_at)

--Near Mastery
select DAY(scores.created_at) as 'day', count(*) as 'count'
from scores
where
state = 'near_mastery' and
scores.created_at like '2014-03-%'
group by
date(scores.created_at)

--Remediation
select DAY(scores.created_at) as 'day', count(*) as 'count'
from scores
where
state = 'remediation' and
scores.created_at like '2014-03-%'
group by
date(scores.created_at)


-- Funnel Metrics

select count(*) from teachers where (created_at between '2014-03-01' and '2014-04-01') and free_signup = 1
union all
select count(*) from teachers where (activated_at between '2014-03-01' and '2014-04-01')
union all
select count(*) from teachers where (created_at between '2014-03-01' and '2014-04-01') and (free_signup = 1) and (state = 'active')
union all
select count(*) from teachers where (activated_at between '2014-03-01' and '2014-04-01') and (free_signup = 1)
union all
SELECT count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE ((teachers.free_signup=1 AND (teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))











































