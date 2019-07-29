package tesk1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Q4 {
	public static void main(String[] args) {
		topTenPatients();
		System.out.println("done!");
	}

	public static void topTenPatients() {
		try {
			Connection myConn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/pharmacy5?autoReconnect=true&useSSL=false", "root", "12345678");
			Statement myStmt = myConn.createStatement();
			int myRs = myStmt.executeUpdate("DROP VIEW IF EXISTS `top_ten_patients`;\r\n");// drop the old view
			 myRs = myStmt.executeUpdate("CREATE VIEW top_ten_patients AS\r\n"+ //create new view
					"SELECT patients.patient_name FROM patients\r\n" + 
					"inner join appointment ON (appointment.patient_id = patients.patient_id)\r\n" + 
					"inner join queue ON (queue.appointment_id = appointment.appointment_id)\r\n" + 
					"ORDER BY ( appointment.appointment_time - queue.actual_time )  limit 10; \r\n");
			 ResultSet myRs2 = myStmt.executeQuery("SELECT patient_name\r\n" + 
			 		"FROM `pharmacy5`.`top_ten_patients`;\r\n");//show the view in java 
			 while (myRs2.next()) {
					System.out.println(myRs2.getString("patient_name"));

				}

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

}
