CREATE TABLE homework
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(50),
    description TEXT
);

INSERT INTO homework (name, description)
VALUES ('Math', 'Solve problems on p.29 1-5.'),
       ('History', 'Write about the Civil War.'),
       ('Science', 'Make a potato battery.'),
       ('Music', 'Listen three classic composition.');

CREATE TABLE lesson
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(50),
    updatedAt   TIMESTAMP,
    homework_id INTEGER,
    FOREIGN KEY (homework_id) REFERENCES homework (id)
);

INSERT INTO lesson (name, updatedAt, homework_id)
VALUES ('Math', CURRENT_TIMESTAMP, 1),
       ('History', CURRENT_TIMESTAMP, 2),
       ('Science', CURRENT_TIMESTAMP, 3),
       ('Music', CURRENT_TIMESTAMP, 4);

CREATE TABLE schedule
(
    id        SERIAL PRIMARY KEY,
    name      VARCHAR(50),
    updatedAt TIMESTAMP
);

INSERT INTO schedule (name, updatedAt)
VALUES ('Monday', CURRENT_TIMESTAMP),
       ('Tuesday', CURRENT_TIMESTAMP),
       ('Wednesday', CURRENT_TIMESTAMP),
       ('Thursday', CURRENT_TIMESTAMP),
       ('Friday', CURRENT_TIMESTAMP);

CREATE TABLE schedule_lesson
(
    schedule_id INTEGER,
    lesson_id   INTEGER,
    PRIMARY KEY (schedule_id, lesson_id),
    FOREIGN KEY (schedule_id) REFERENCES schedule (id),
    FOREIGN KEY (lesson_id) REFERENCES lesson (id)
);

INSERT INTO schedule_lesson (schedule_id, lesson_id)
VALUES (1, 1),
       (1, 2),
       (1, 4),
       (2, 1),
       (2, 3),
       (3, 1),
       (3, 2),
       (3, 4),
       (4, 3),
       (4, 4),
       (5, 2);
