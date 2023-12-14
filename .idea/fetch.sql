SELECT *
FROM public.homework

SELECT *
FROM lesson
         FULL JOIN homework ON lesson.homework_id = homework.id

SELECT *
FROM lesson
         FULL JOIN homework ON lesson.homework_id = homework.id
ORDER BY lesson.updatedAt

SELECT Schedule.id, Schedule.name, Schedule.updatedAt, Lesson.id, Lesson.name, Lesson.updatedAt
FROM schedule
         FULL JOIN schedule_lesson ON schedule.id = schedule_lesson.schedule_id
         FULL JOIN lesson ON schedule_lesson.lesson_id = lesson.id;

SELECT schedule.name AS schedule_name, count(schedule_lesson.lesson_id) AS lesson_count
FROM schedule
         FULL JOIN schedule_lesson ON schedule.id = schedule_lesson.schedule_id
GROUP BY schedule.name;