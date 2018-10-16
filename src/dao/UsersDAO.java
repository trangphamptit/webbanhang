package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;

import connect.KetNoi;
import model.Users;

public class UsersDAO {
	public static boolean checkEmail(String email) {
		Connection con = KetNoi.getConnection();
		String sql = "select * from users WHERE email= ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				con.close();
				return true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, e);

		}
		return false;
	}
	
	public static boolean insert(Users user) {
		Connection con = KetNoi.getConnection();
		String sql = "INSERT INTO users(username, password, email) value(?, ?, ?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, user.ge);
			ps.setString(2, user.getPass());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static void main(String[] args) {
		System.out.println(checkEmail("abc@gmail.com"));
	}
}
