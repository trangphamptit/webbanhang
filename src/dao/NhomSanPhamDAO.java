package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import connect.KetNoi;
import model.NhomSanPham;

public class NhomSanPhamDAO {
	public ArrayList<NhomSanPham> layNhomSanPham() {
		Connection con = KetNoi.getConnection();
		String sql = "SELECT * FROM NhomSanPham";
		ArrayList<NhomSanPham> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				NhomSanPham nhomSanPham = new NhomSanPham();
				nhomSanPham.setMaNhom(rs.getInt("maNhom"));
				nhomSanPham.setTenNhom(rs.getString("tenNhom"));
				nhomSanPham.setHinhAnh(rs.getString("hinhAnh"));
				nhomSanPham.setTrangThai(rs.getInt("trangThai"));

				list.add(nhomSanPham);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
