package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import connect.KetNoi;
import model.ChiTietSanPham;

public class ChiTietSanPhamDAO {
	
	public static ArrayList<ChiTietSanPham> getChiTietSanPhamTheoNhom(int maNhom) throws SQLException {
        Connection connection = KetNoi.getConnection();
        String sql = "SELECT * FROM chitietsanpham WHERE maNhom = ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, maNhom);
        ResultSet rs = ps.executeQuery();
        ArrayList<ChiTietSanPham> list = new ArrayList<>();
        while (rs.next()) {
			ChiTietSanPham sanPham = new ChiTietSanPham();
            sanPham.setMaSanPham(rs.getInt("maSanPham"));
            sanPham.setTenSanPham(rs.getString("tenSanPham"));
            sanPham.setHinhAnh(rs.getString("hinhAnh"));
            sanPham.setGia(rs.getInt("gia"));
            sanPham.setGiaGiam(rs.getLong("giaGiam"));
            sanPham.setHinhAnh(rs.getString("hinhAnh"));
            sanPham.setChiTiet(rs.getString("chiTiet"));
            sanPham.setNgay(rs.getDate("ngay"));
            sanPham.setMaNhom(rs.getInt("maNhom"));
            list.add(sanPham);
        }
        return list;
    }
	
	public static void main(String[] args) {
		try {
			ArrayList< ChiTietSanPham> sanPham= getChiTietSanPhamTheoNhom(4);
			for (ChiTietSanPham sp : sanPham) {
				System.out.println(sp.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
