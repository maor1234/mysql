# Pharmacy-mysql
Tasks in Database course

we needed to build a code in java that connect to mysql database 
the first task is to build the database itself

## Database
doctors (doctor_id, doctor_type, doctor_name, salary)
patients (patient_id, patient_name)
appointment (appointment_id, patient_id, doctor_id, appointment_time)
queue (appointment_id, actual_time)
queue_summary (date, doctor_id, num_of_patients)


## Second question
write a program in java that connect to the database and when you enter the doctor id it will print in java all the patients ids, names and the time of the appointment.

## Third question
write a java program that allowing the doctor to enter patient id that got to him, the program will call a stored procedure that update the table queue (actual time) time when the patient got to him.

## Forth question
write a program in java that create a VIEW and then prints in java 10 patients whom waited the longest time.

## Fifth question
write a TRIGGER that update the table queue_summary every time that a new appointment adds.



