package tesk1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Q5 {

	public static void main(String[] args) {

	}

	public static void updateQueue() {
		try {
			Connection myConn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/pharmacy5?autoReconnect=true&useSSL=false", "root", "12345678");
			Statement myStmt = myConn.createStatement();
			int myRs = myStmt.executeUpdate("		DELIMITER $$\r\n" + "		USE pharmacy5 $$\r\n"
					+ "		CREATE TRIGGER trig \r\n" + "		AFTER INSERT ON queue FOR EACH ROW\r\n"
					+ "		BEGIN \r\n" + "		declare doc int;\r\n" + "		declare id_new int;\r\n"
					+ "		SET id_new = new.appointment_id;\r\n"
					+ "		SET doc = (SELECT doctor_id FROM queue, appointment\r\n"
					+ "				  WHERE appointment.appointment_id = id_new \r\n"
					+ "		          AND queue.appointment_id = appointment.appointment_id);\r\n"
					+ "		if exists(SELECT date FROM queue_summery WHERE date = convert(now(),date)) THEN \r\n"
					+ "				  UPDATE  queue_summery \r\n"
					+ "		          SET doctor_id = doctor_id, date = date, num_of_patient = num_of_patient + 1\r\n"
					+ "		          WHERE date = convert(now(),date) AND doctor_id = doc;\r\n" + "		else \r\n"
					+ "				  INSERT INTO queue_summery\r\n"
					+ "		          VALUES(doctor,convert(now(),date),1, num_of_patient = num_of_patient - 1);\r\n" + "		END if;\r\n"
					+ "		END $$\r\n" + "		DELIMITER ; ");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
