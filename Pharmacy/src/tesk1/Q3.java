package tesk1;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Q3 {

	public static void main(String[] args) {
		addNewPatient();
		System.out.println("done!");
	}

	public static void addNewPatient() {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("Enter patient Id: ");
			String patientId = sc.nextLine();
			sc.close();
			
			
			int appointment_id = 0;
			String updatequeue =  "{call updatequeue(?)}";
			CallableStatement stmt = null;
			Connection myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/pharmacy5?autoReconnect=true&useSSL=false", "root", "12345678");
			Statement myStmt = myConn.createStatement();
			ResultSet myRs = myStmt.executeQuery("SELECT queue.appointment_id FROM queue\r\n"
					+ "inner join appointment ON (appointment.appointment_id = queue.appointment_id)\r\n"
					+"inner join patients ON (patients.patient_id = appointment.patient_id)\r\n"
					+ "WHERE patients.patient_id = appointment.patient_id\r\n" 
					+ "AND patients.patient_id =\""
					+ patientId + "\";");
			
			
			if (myRs.isBeforeFirst()) {
				myRs.next();
				appointment_id = myRs.getInt(1);
				stmt = myConn.prepareCall(updatequeue);
				stmt.setInt(1, appointment_id);
				stmt.executeUpdate();
			} else {
				System.out.println("No such patient");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
