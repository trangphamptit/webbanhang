package connect;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class KetNoi {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/webbanhang", "root", "123");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}

	public static void main(String[] args) {
		System.out.println(getConnection());
	}
}
