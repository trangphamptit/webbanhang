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
	 // kiểm tra email tồn tại chưa
    public boolean checkEmail(String email) {
        Connection connection = KetNoi.getConnection();
        String sql = "SELECT * FROM users WHERE user_email = ?";
        try {
        	PreparedStatement ps = connection.prepareStatement(sql);
        	ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    // phương thức thêm tài khoản
    public boolean insertUser(Users u) {
        Connection connection = KetNoi.getConnection();
        String sql = "INSERT INTO users VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, u.getUser_id());
            ps.setString(2, u.getUser_email());
            ps.setString(3, u.getUser_pass());
            ps.setBoolean(4, u.isUser_role());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
