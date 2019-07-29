package tesk1;
import java.sql.*;
import java.util.Scanner;


public class Q2 {

	public static void main(String[] args) {

		getDoctorPatients();
		System.out.println("done!");

	}

	public static void getDoctorPatients() {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("Enter doctor id: ");
			String doctorId = "";
			doctorId = sc.nextLine();
			sc.close();

			Connection myConn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/pharmacy5?autoReconnect=true&useSSL=false", "root", "12345678");
			Statement myStmt = myConn.createStatement();
			ResultSet myRs = myStmt
					.executeQuery("SELECT patients.patient_id, patients.patient_name, appointment.appointment_time FROM doctors, patients, appointment\r\n"
							+ "WHERE doctors.doctor_id = \"" + doctorId + "\"\r\n"
							+ "AND doctors.doctor_id = appointment.doctor_id \r\n"
							+ "AND patients.patient_id = appointment.patient_id\r\n" + 
							"ORDER BY appointment_time; ");

			while (myRs.next()) {
				System.out.println(myRs.getString("patient_id") + "  " +myRs.getString("patient_name") + "  " + myRs.getString("appointment_time"));

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
