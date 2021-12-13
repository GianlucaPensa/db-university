CREATE DATABASE `test_university`;
USE `test_university`;

CREATE TABLE `departments`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone` MEDIUMINT,
	`email` VARCHAR(100),
	`website` VARCHAR(100),
	`head_of_department` VARCHAR(100),
	PRIMARY KEY(`id`)
);

CREATE TABLE `degrees`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`address` VARCHAR(255),
	`email`VARCHAR(100),
	`website` VARCHAR(100),
	`level` VARCHAR(100),
	`departments_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`)
);

CREATE TABLE `student`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`date_of_birth` VARCHAR(100) NOT NULL,
	`fiscal_code`VARCHAR(100) NOT NULL,
	`enrolment_date` VARCHAR(100),
	`registration_number` SMALLINT,
	`email`VARCHAR(100),
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `student`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`date_of_birth` VARCHAR(100) NOT NULL,
	`fiscal_code`VARCHAR(100) NOT NULL,
	`enrolment_date` VARCHAR(100),
	`registration_number` SMALLINT,
	`email`VARCHAR(100),
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `courses`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`description` TEXT,
	`website` VARCHAR(255),
	`cfu` TINYINT,
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `exams`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	`hour` TIME NOT NULL,
	`location` VARCHAR(255),
	`address` VARCHAR(255),
	`courses_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`)
);

CREATE TABLE `vote`(
	`student_id` INT NOT NULL,
	`exams_id` INT NOT NULL,
	`vote` INT NOT NULL,
	PRIMARY KEY(`student_id`,`exams_id`),
	FOREIGN KEY(`student_id`) REFERENCES student(`id`),
	FOREIGN KEY(`exams_id`) REFERENCES exams(`id`)
);

CREATE TABLE `teacher`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`phone` MEDIUMINT,
	`email` VARCHAR(100),
	`office_address` VARCHAR(255),
	PRIMARY KEY(`id`)
);

CREATE TABLE `teacher_courses`(
	`teacher_id` INT NOT NULL,
	`courses_id` INT NOT NULL,
	PRIMARY KEY(`teacher_id`,`courses_id`),
	FOREIGN KEY(`teacher_id`) REFERENCES teacher(`id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`)
);
