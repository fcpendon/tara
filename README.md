# Part 1: Tara!

Tara is a simple travel SPA designed to provide API-based weather forecasts via [openweathermap.org](https://openweathermap.org/api) and API-based venue searches via [foursquare.com](https://developer.foursquare.com/docs/api/venues/search). Currently, it only supports Japan and 6 of its cities.

This project is made using:
- Laravel
- MySQL
- Vue.js
- Bootstrap 4

## Dev Notes
UI/UX is sufficiently responsive, text is always readable, and moving between landscape and portrait modes maintain the same look and feel. Graphics are clean, colorful, and pleasing to the eyes. A bit of country and city trivia are provided as well as 5-day weather forecast. Venue search is helpful but unfortunately, most results have addresses which are in Japanese. Overall, this makes the app look easy to use and is fairly useful for travelling.

Code implementation applies PSR-1 and PSR-12, making code readable and understandable. Classes and components are well-structured and appropriately named. Validation is also provided in the back-end for additional data integrity. Since I'm still new to Vue.js, front-end implementation is a bit basic and hard-coded.

## Setting Up
Once this repository is cloned, follow these steps:
1. Prepare .env.
```
APP_NAME="Tara!"
APP_ENV=local
APP_KEY=<required>
APP_DEBUG=true
APP_URL=<required>

LOG_CHANNEL=stack

DB_CONNECTION=<required>
DB_HOST=<required>
DB_PORT=<required>
DB_DATABASE=<required>
DB_USERNAME=<required>
DB_PASSWORD=<required>

FOURSQUARE_CLIENT_ID=<required>
FOURSQUARE_CLIENT_SECRET=<required>
OPENWEATHERMAP_APP_ID=<required>
```
2. Run `composer update` for dependencies.
3. Run `npm install` for front-end libraries.
4. Run `php artisan migrate` for tables.
5. Import SQL dump located in *database/tara.sql*.

## References

Photos and words were taken from [japan-guide.com](https://www.japan-guide.com/list/e1003.html) and Wikipedia.

# Part 2: SQL

### A
```sql
SELECT
    CONCAT('T', LPAD(REPLACE(t.id, ',', ''), 11, '0')) AS ID,
nickname AS Nickname,
    CASE
        WHEN status = 0 THEN 'Discontinued'
        WHEN status = 1 THEN 'Active'
        WHEN status = 2 THEN 'Deactivated'
    END AS Status,
    GROUP_CONCAT(
        CASE
            WHEN role = 1 THEN 'Trainer'
            WHEN role = 2 THEN 'Assessor'
            WHEN role = 3 THEN 'Staff'
        END
    SEPARATOR '/') AS Roles
FROM trn_teacher t
LEFT JOIN trn_teacher_role r ON t.id = r.teacher_id
GROUP BY t.id
```

### B
```mysql
SELECT
    REPLACE(t.id, ',', '') AS ID,
    t.nickname AS Nickname,
    IFNULL(Open, 0) AS Open,
    IFNULL(Reserved, 0) AS Reserved,
    IFNULL(Taught, 0) AS Taught,
    IFNULL(NoShow, 0) AS 'No Show'
FROM trn_teacher t
LEFT JOIN trn_teacher_role r1 ON t.id = r1.teacher_id
LEFT JOIN trn_teacher_role r2 ON t.id = r2.teacher_id
LEFT JOIN
    (SELECT teacher_id, COUNT(1) AS Open
    FROM trn_time_table
    WHERE status = 1
    GROUP BY teacher_id) AS OpenTable
ON t.id = OpenTable.teacher_id
LEFT JOIN
    (SELECT teacher_id, COUNT(1) AS Reserved
    FROM trn_time_table
    WHERE status = 3
    GROUP BY teacher_id) AS ReservedTable
ON t.id = ReservedTable.teacher_id
LEFT JOIN
    (SELECT teacher_id, COUNT(1) AS Taught
    FROM trn_evaluation
    WHERE result = 1
    GROUP BY teacher_id) AS TaughtTable
ON t.id = TaughtTable.teacher_id
LEFT JOIN
    (SELECT teacher_id, COUNT(1) AS NoShow
    FROM trn_evaluation
    WHERE result = 2
    GROUP BY teacher_id) AS NoShowTable
ON t.id = NoShowTable.teacher_id
WHERE (t.status = 1 OR t.status = 2)
AND (r1.role = 1 AND r2.role = 2)
```
