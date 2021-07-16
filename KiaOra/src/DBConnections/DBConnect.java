package DBConnections;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/kiaora";
	private static String username = "root";
	private static String password = "1234Ishini";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,username,password);	
			
		}catch(Exception e){
			System.out.println("Database connection is not success");
		}
		
		return con;
	}
}
