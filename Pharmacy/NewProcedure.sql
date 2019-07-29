CREATE PROCEDURE `updatequeue`(in id int)
BEGIN
	UPDATE `queue` SET `actual_time` = now() where appointment_id=id;
END
