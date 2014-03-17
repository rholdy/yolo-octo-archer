-- Cumulative Teachers by Month

SELECT "july12_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2012-07-01')
union all
SELECT "aug12_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2012-08-01')
union all
SELECT "sept12_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2012-09-01')
union all
SELECT "oct12_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2012-10-01')
union all
SELECT "nov12_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2012-11-01')
union all
SELECT "dec12_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2012-12-01')
union all
SELECT "jan13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-01-01')
union all
SELECT "feb13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-02-01')
union all
SELECT "march13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-03-01')
union all
SELECT "april13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-04-01')
union all
SELECT "may13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-05-01')
union all
SELECT "june13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-06-01')
union all
SELECT "july13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-07-01')
union all
SELECT "aug13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-08-01')
union all
SELECT "sep13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-09-01')
union all
SELECT "oct13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-10-01')
union all
SELECT "nov13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-11-01')
union all
SELECT "dec13_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2013-12-01')
union all
SELECT "jan14_teachers" AS "name", count(*) AS "value" FROM `teachers` WHERE (DATE(created_at) < '2014-01-01')




-- Cumulate Premium Teachers


SELECT "july_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-07-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "aug12_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-08-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "sept12_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-09-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "oct12_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-10-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "nov12_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-11-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "dec12_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-12-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "jan13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-01-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "feb13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-02-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "march13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-03-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "april13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-04-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "may13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-05-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "june13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-06-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "july13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-07-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "aug13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-08-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "sep13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-09-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "oct13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-10-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "nov13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-11-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "dec13_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-12-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "jan14_teachers" AS "name", count(*) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2014-01-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))


-- Cumulative Schools

SELECT "july12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2012-07-01')
union all
SELECT "aug12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2012-08-01')
union all
SELECT "sept12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2012-09-01')
union all
SELECT "oct12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2012-10-01')
union all
SELECT "nov12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2012-11-01')
union all
SELECT "dec12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2012-12-01')
union all
SELECT "jan13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-01-01')
union all
SELECT "feb13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-02-01')
union all
SELECT "march13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-03-01')
union all
SELECT "april13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-04-01')
union all
SELECT "may13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-05-01')
union all
SELECT "june13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-06-01')
union all
SELECT "july13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-07-01')
union all
SELECT "aug13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-08-01')
union all
SELECT "sep13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-09-01')
union all
SELECT "oct13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-10-01')
union all
SELECT "nov13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-11-01')
union all
SELECT "dec13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2013-12-01')
union all
SELECT "jan14_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `schools` WHERE (DATE(created_at) < '2014-01-01')


-- Cumulative Premium Schools

SELECT "july_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-07-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "aug12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-08-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "sept12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-09-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "oct12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-10-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "nov12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-11-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "dec12_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2012-12-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "jan13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-01-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "feb13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-02-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "march13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-03-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "april13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-04-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "may13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-05-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "june13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-06-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "july13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-07-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "aug13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-08-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "sep13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-09-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "oct13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-10-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "nov13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-11-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "dec13_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2013-12-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "jan14_schools" AS "name", count(DISTINCT teachers.school_id) AS "value" FROM `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(teachers.created_at) < '2014-01-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))



-- Cumulative Districts


SELECT "july12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-07-01')
union all
SELECT "aug12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-08-01')
union all
SELECT "sept12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-09-01')
union all
SELECT "oct12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-10-01')
union all
SELECT "nov12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-11-01')
union all
SELECT "dec12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-12-01')
union all
SELECT "jan13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-01-01')
union all
SELECT "feb13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-02-01')
union all
SELECT "march13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-03-01')
union all
SELECT "april13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-04-01')
union all
SELECT "may13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-05-01')
union all
SELECT "june13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-06-01')
union all
SELECT "july13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-07-01')
union all
SELECT "aug13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-08-01')
union all
SELECT "sep13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-09-01')
union all
SELECT "oct13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-10-01')
union all
SELECT "nov13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-11-01')
union all
SELECT "dec13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-12-01')
union all
SELECT "jan14_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2014-01-01')




-- Cumulative Premium Districts


SELECT "july12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-07-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "aug12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-08-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "sept12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-09-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "oct12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-10-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "nov12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-11-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "dec12_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2012-12-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "jan13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-01-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "feb13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-02-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "march13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-03-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "april13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-04-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "may13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-05-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "june13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-06-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "july13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-07-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "aug13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-08-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "sep13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-09-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "oct13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-10-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "nov13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-11-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "dec13_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2013-12-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))
union all
SELECT "jan14_districts" AS "name", count(DISTINCT schools.district_id) AS "value" FROM `teachers` `teachers` INNER JOIN `schools` ON `schools`.id = `teachers`.school_id INNER JOIN `districts` ON `districts`.id = `schools`.district_id WHERE (DATE(districts.created_at) < '2014-01-01') AND ((teachers.access_type=0 OR (teachers.access_type IS NULL AND (schools.access_type=0 OR schools.access_type IS NULL AND districts.access_type=0))))




-- Cumulative Scores by Month



SELECT "july12_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2012-07-01')
union all
SELECT "aug12_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2012-08-01')
union all
SELECT "sept12_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2012-09-01')
union all
SELECT "oct12_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2012-10-01')
union all
SELECT "nov12_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2012-11-01')
union all
SELECT "dec12_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2012-12-01')
union all
SELECT "jan13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-01-01')
union all
SELECT "feb13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-02-01')
union all
SELECT "march13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-03-01')
union all
SELECT "april13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-04-01')
union all
SELECT "may13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-05-01')
union all
SELECT "june13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-06-01')
union all
SELECT "july13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-07-01')
union all
SELECT "aug13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-08-01')
union all
SELECT "sep13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-09-01')
union all
SELECT "oct13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-10-01')
union all
SELECT "nov13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-11-01')
union all
SELECT "dec13_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2013-12-01')
union all
SELECT "jan14_scores" AS "name", count(*) AS "value" FROM `scores` WHERE (DATE(created_at) < '2014-01-01')



-- Premium Scores by Month


select "july12_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2012-07-01'))
union all
select "aug12_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2012-08-01'))
union all
select "sept12_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2012-09-01'))
union all
select "oct12_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2012-10-01'))
union all
select "nov12_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2012-11-01'))
union all
select "dec12_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2012-12-01'))
union all
select "jan13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-01-01'))
union all
select "feb13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-02-01'))
union all
select "march13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-03-01'))
union all
select "april13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-04-01'))
union all
select "may13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-05-01'))
union all
select "june13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-06-01'))
union all
select "july13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-07-01'))
union all
select "aug13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-08-01'))
union all
select "sept13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-09-01'))
union all
select "oct13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-10-01'))
union all
select "nov13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-11-01'))
union all
select "dec13_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2013-12-01'))
union all
select "jan14_scores" AS "name", count(*) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.free_signup = 0 AND (teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0)))) AND (scores.created_at < '2014-01-01'))



-- Cumulative Trackers


SELECT "july12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2012-07-01')
union all
SELECT "aug12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2012-08-01')
union all
SELECT "sept12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2012-09-01')
union all
SELECT "oct12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2012-10-01')
union all
SELECT "nov12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2012-11-01')
union all
SELECT "dec12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2012-12-01')
union all
SELECT "jan13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-01-01')
union all
SELECT "feb13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-02-01')
union all
SELECT "march13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-03-01')
union all
SELECT "april13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-04-01')
union all
SELECT "may13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-05-01')
union all
SELECT "june13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-06-01')
union all
SELECT "july13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-07-01')
union all
SELECT "aug13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-08-01')
union all
SELECT "sep13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-09-01')
union all
SELECT "oct13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-10-01')
union all
SELECT "nov13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-11-01')
union all
SELECT "dec13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2013-12-01')
union all
SELECT "jan14_classrooms" AS "name", count(*) AS "value" FROM `classrooms` WHERE (DATE(created_at) < '2014-01-01')



-- Premium Trackers


select "july12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2012-07-01'))
union all
select "aug12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2012-08-01'))
union all
select "sept12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2012-09-01'))
union all
select "oct12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2012-10-01'))
union all
select "nov12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2012-11-01'))
union all
select "dec12_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2012-12-01'))
union all
select "jan13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-01-01'))
union all
select "feb13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-02-01'))
union all
select "march13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-03-01'))
union all
select "april13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-04-01'))
union all
select "may13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-05-01'))
union all
select "june13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-06-01'))
union all
select "july13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-07-01'))
union all
select "aug13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-08-01'))
union all
select "sept13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-09-01'))
union all
select "oct13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-10-01'))
union all
select "nov13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-11-01'))
union all
select "dec13_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2013-12-01'))
union all
select "jan14_classrooms" AS "name", count(*) AS "value" FROM `classrooms` inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (classrooms.created_at < '2014-01-01'))



-- Cumulative Uploads


SELECT "july12_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2012-07-01')
union all
SELECT "aug12_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2012-08-01')
union all
SELECT "sept12_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2012-09-01')
union all
SELECT "oct12_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2012-10-01')
union all
SELECT "nov12_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2012-11-01')
union all
SELECT "dec12_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2012-12-01')
union all
SELECT "jan13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-01-01')
union all
SELECT "feb13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-02-01')
union all
SELECT "march13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-03-01')
union all
SELECT "april13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-04-01')
union all
SELECT "may13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-05-01')
union all
SELECT "june13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-06-01')
union all
SELECT "july13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-07-01')
union all
SELECT "aug13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-08-01')
union all
SELECT "sep13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-09-01')
union all
SELECT "oct13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-10-01')
union all
SELECT "nov13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-11-01')
union all
SELECT "dec13_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2013-12-01')
union all
SELECT "jan14_materials" AS "name", count(*) AS "value" FROM `materials` WHERE (DATE(created_at) < '2014-01-01')






-- Premium Uploads


select "july12_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2012-07-01'))
union all
select "aug12_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2012-08-01'))
union all
select "sept12_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2012-09-01'))
union all
select "oct12_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2012-10-01'))
union all
select "nov12_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2012-11-01'))
union all
select "dec12_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2012-12-01'))
union all
select "jan13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-01-01'))
union all
select "feb13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-02-01'))
union all
select "march13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-03-01'))
union all
select "april13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-04-01'))
union all
select "may13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-05-01'))
union all
select "june13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-06-01'))
union all
select "july13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-07-01'))
union all
select "aug13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-08-01'))
union all
select "sept13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-09-01'))
union all
select "oct13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-10-01'))
union all
select "nov13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-11-01'))
union all
select "dec13_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2013-12-01'))
union all
select "jan14_materials" AS "name", count(*) AS "value" FROM `materials` inner join teachers on teachers.id = materials.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where ((teachers.access_type = 0 OR (teachers.access_type IS NULL AND (schools.access_type = 0 OR schools.access_type IS NULL AND districts.access_type = 0))) AND (materials.created_at < '2014-01-01'))



-- Cumulative Teachers who have Scored an Assessment by Month


select "july12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2012-07-01'
union all
select "aug12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2012-08-01'
union all
select "sept12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2012-09-01'
union all
select "oct12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2012-10-01'
union all
select "nov12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2012-11-01'
union all
select "dec12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2012-12-01'
union all
select "jan13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-01-01'
union all
select "feb13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-02-01'
union all
select "march13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-03-01'
union all
select "april13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-04-01'
union all
select "may13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-05-01'
union all
select "june13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-06-01'
union all
select "july13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-07-01'
union all
select "aug13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-08-01'
union all
select "sept13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-09-01'
union all
select "oct13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-10-01'
union all
select "nov13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-11-01'
union all
select "dec13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2013-12-01'
union all
select "jan14_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at < '2014-01-01'




-- Teachers Who have scored this month


select "july12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2012-07-%'
union all
select "aug12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2012-08-%'
union all
select "sept12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2012-09-%'
union all
select "oct12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2012-10-%'
union all
select "nov12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2012-11-%'
union all
select "dec12_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2012-12-%'
union all
select "jan13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-01-%'
union all
select "feb13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-02-%'
union all
select "march13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-03-%'
union all
select "april13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-04-%'
union all
select "may13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-05-%'
union all
select "june13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-06-%'
union all
select "july13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-07-%'
union all
select "aug13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-08-%'
union all
select "sept13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-09-%'
union all
select "oct13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-10-%'
union all
select "nov13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-11-%'
union all
select "dec13_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2013-12-%'
union all
select "jan14_scores" AS "name", count(distinct teachers.id) AS "value" FROM `scores` inner join assessments on assessments.id = scores.assessment_id inner join classrooms on classrooms.id = assessments.classroom_id inner join teachers on teachers.id = classrooms.teacher_id inner join schools on schools.id = teachers.school_id inner join districts on districts.id = schools.district_id where scores.created_at like '2014-01-%'

























