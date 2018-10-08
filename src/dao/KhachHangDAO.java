package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import connect.KetNoi;
import model.KhachHang;

public class KhachHangDAO {
	public ArrayList<KhachHang> layKhachHang() {
		Connection con = KetNoi.getConnection();
		String sql = "SELECT * FROM KhachHang";
		ArrayList<KhachHang> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				KhachHang khachHang = new KhachHang();
				khachHang.setMaKhachHang(rs.getInt("maKhachHang"));
				khachHang.setTenKhachHang(rs.getString("tenKhachHang"));
				khachHang.setNgaySinh(rs.getDate("ngaySinh"));
				khachHang.setSoDienThoai(rs.getString("soDienThoai"));
				khachHang.setDiaChi(rs.getString("diaChi"));
				khachHang.setEmail(rs.getString("email"));

				list.add(khachHang);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
