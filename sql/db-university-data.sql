use `test_university`;

INSERT INTO `departments`(`name`,`address`,`phone`, `email`, `website`, `head_of_department`) VALUES ('Laurea in Scienze Sociali', 'Via Roma 42, Roma', 327894, 'scienzesociali@gmail.com', 'www.scienzesociali.it', 'Alberto Rossi');

UPDATE `departments` SET `name`='Sociologia' WHERE `id`= 1;
UPDATE `departments` SET `email`='dipartimentosociologia@gmail.com' WHERE `id`= 1;
UPDATE `departments` SET `website`='www.sociologiaroma.it' WHERE `id`= 1;

INSERT INTO `degrees`(`name`,`address`,`email`, `website`, `level`, `departments_id`) VALUES ('Laurea in Ingegneria Informatica', 'Via di San Giovanni in Laterano 11, Roma', 'scienzesociali@gmail.com', 'www.scienzesociali.it', 'Triennale', 1);

INSERT INTO `student`(`name`,`surname`,`date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) VALUES ('Gianluca', 'Pensa', '01/01/2000', 'PNSGLCH501QTTL', '12/11/2021', '1234', 'pensa.gianluca@gmail.com', 1);

INSERT INTO `courses`(`name`, `description`, `website`, `cfu`, `degrees_id`) VALUES ('Nome del corso', 'Descrizione del corso che descrive il corso', 'www.proprioquelcorso.it', '15', 1);

INSERT INTO `exams`(`date`, `hour`, `location`, `address`, `courses_id`) VALUES ('2021-12-25', '14:30', 'Sede di Scienze Sociali', 'Via di San Giovanni in Laterano 11, Roma', 1);

INSERT INTO `vote`(`student_id`, `exams_id`, `vote`) VALUES (1, 1, 27);

INSERT INTO `teacher`(`name`, `surname`, `phone`, `email`, `office_address`) VALUES ('Mario', 'Lamberti', 339412, 'mario.lamberti@gmail.com', 'Via dei San Pietrini 72, Roma');

INSERT INTO `teacher_courses`(`teacher_id`, `courses_id`) VALUES (1, 1);


