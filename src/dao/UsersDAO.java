package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;

import connect.KetNoi;

public class UsersDAO {
	public boolean checkEmail(String email) {
		Connection con = KetNoi.getConnection();
		String sql = "SELECT * FROM users WHERE email= ?";
		PreparedStatement ps;
		try {
			ps = con.prepareCall(sql);
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
}
