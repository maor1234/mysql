CREATE SCHEMA `pharmacy5` ;


CREATE TABLE `pharmacy5`.`Doctors` (`doctor_id` INT NOT NULL AUTO_INCREMENT,`doctor_type` VARCHAR(45) NOT NULL,`doctor_name` VARCHAR(45) NOT NULL,`salary` INT NULL,PRIMARY KEY (`doctor_id`));

INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Avi','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Mario','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Yoshi','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Maor','B');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Yarin','B');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Bibi Netanyahu','B');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Putin Senderela','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Pu Hadov','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Spaider Man','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Wonder Woman','C');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Super Man','C');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Batman','A');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Moshe','P');
INSERT INTO `pharmacy5`.`Doctors`(`doctor_name`,`doctor_type`)VALUES('Clapton','Z');

CREATE TABLE `pharmacy5`.`Patients` (`patient_id` INT NOT NULL AUTO_INCREMENT,`patient_name` VARCHAR(45) NOT NULL,PRIMARY KEY (`patient_id`));

INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Pumba');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Nala');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Simba');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Timon');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Scar');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Mufasa');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Zazu');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Sarabi');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Azizi');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Kamari');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Shenzi');
INSERT INTO `pharmacy5`.`Patients`(`patient_name`)VALUES('Sarafina');

CREATE TABLE `pharmacy5`.`Queue` (`appointment_id` INT NOT NULL AUTO_INCREMENT,`actual_time` DATETIME NOT NULL,PRIMARY KEY (`appointment_id`));

INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-18 12:36:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-18 13:57:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-18 15:08:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-18 11:29:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-19 10:20:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-19 10:47:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-19 11:00:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-19 11:20:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-20 10:34:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-20 10:45:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-20 11:05:00');
INSERT INTO `pharmacy5`.`Queue`(`actual_time`)VALUES('2019-07-20 11:15:00');

CREATE TABLE `pharmacy5`.`Queue_Summery` (`date` DATETIME NOT NULL,`doctor_id` INT NOT NULL,`num_of_patient` INT NOT NULL,PRIMARY KEY (`doctor_id`, `date`))COMMENT = 'doctor_id,date,num_of_patient';

INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('1','2019-07-18 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('2','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('3','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('4','2019-07-18 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('5','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('6','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('7','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('8','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('9','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('10','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('11','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('12','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('13','2019-07-18 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('14','2019-07-18 00:00:00','0');

INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('1','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('2','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('3','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('4','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('5','2019-07-19 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('6','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('7','2019-07-19 00:00:00','2');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('8','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('9','2019-07-19 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('10','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('11','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('12','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('13','2019-07-19 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('14','2019-07-19 00:00:00','0');

INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('1','2019-07-20 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('2','2019-07-20 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('3','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('4','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('5','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('6','2019-07-20 00:00:00','2');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('7','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('8','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('9','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('10','2019-07-20 00:00:00','1');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('11','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('12','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('13','2019-07-20 00:00:00','0');
INSERT INTO `pharmacy5`.`Queue_Summery`(`doctor_id`,`date`,`num_of_patient`)VALUES('14','2019-07-20 00:00:00','0');

CREATE TABLE `pharmacy5`.`Appointment` (`appointment_id` INT NOT NULL AUTO_INCREMENT,`patient_id` INT NOT NULL,`doctor_id` INT NOT NULL,`appointment_time` DATETIME NOT NULL,PRIMARY KEY (`appointment_id`));

INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('1','6','2019-07-18 10:34:00','1');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('2','9','2019-07-18 10:45:00','1');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('3','10','2019-07-18 11:00:00','1');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('4','2','2019-07-18 11:15:00','4');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('5','4','2019-07-19 10:34:00','5');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('6','11','2019-07-19 10:45:00','7');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('7','7','2019-07-19 11:00:00','7');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('8','1','2019-07-19 11:15:00','9');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('9','3','2019-07-20 10:34:00','10');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('10','5','2019-07-20 10:45:00','2');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('11','8','2019-07-20 11:00:00','6');
INSERT INTO `pharmacy5`.`Appointment`(`appointment_id`,`patient_id`,`appointment_time`,`doctor_id`)VALUES('12','12','2019-07-20 11:15:00','6');