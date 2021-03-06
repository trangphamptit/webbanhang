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
	
	public static ArrayList<ChiTietSanPham> getCardsData(int maNhom) throws SQLException{
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
	            list.add(sanPham);
	        }
		return list;
	}
	
	public static ChiTietSanPham getChiTietSanPhamTheoMa(int maSP) throws SQLException {
        Connection connection = KetNoi.getConnection();
        String sql = "SELECT * FROM chitietsanpham WHERE maSanPham = ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, maSP);
        ResultSet rs = ps.executeQuery();
        ChiTietSanPham sanPham = new ChiTietSanPham();
        while (rs.next()) {
            sanPham.setMaSanPham(rs.getInt("maSanPham"));
            sanPham.setTenSanPham(rs.getString("tenSanPham"));
            sanPham.setHinhAnh(rs.getString("hinhAnh"));
            sanPham.setGia(rs.getInt("gia"));
            sanPham.setGiaGiam(rs.getLong("giaGiam"));
            sanPham.setHinhAnh(rs.getString("hinhAnh"));
            sanPham.setChiTiet(rs.getString("chiTiet"));
            sanPham.setNgay(rs.getDate("ngay"));
            sanPham.setMaNhom(rs.getInt("maNhom"));
        }
        connection.close();
        return sanPham;
    }
	
	public static ArrayList<ChiTietSanPham> getAllSanPham(int menuCha) throws SQLException{	// 1: nam
		Connection connection = KetNoi.getConnection();
		int temp1, temp2;
		if(menuCha == 1) {
			temp1 = 0;
			temp2 = 7;
		}else {
			temp1 = 7;
			temp2 = 16;
		}
        String sql = "SELECT * FROM chitietsanpham WHERE maNhom > ? AND maNhom <= ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, temp1);
        ps.setInt(2, temp2);
        ResultSet rs = ps.executeQuery();
        
        ArrayList<ChiTietSanPham> list = new ArrayList<>();
        while (rs.next()) {
			ChiTietSanPham sanPham = new ChiTietSanPham();
			sanPham.setMaSanPham(rs.getInt("maSanPham"));
            sanPham.setTenSanPham(rs.getString("tenSanPham"));
            sanPham.setHinhAnh(rs.getString("hinhAnh"));
            sanPham.setGia(rs.getInt("gia"));
            sanPham.setGiaGiam(rs.getLong("giaGiam"));
            list.add(sanPham);
        }
	return list;
	}
	public static void main(String[] args) {
		try {
			ArrayList< ChiTietSanPham> sanPham= getCardsData(2);
			for (ChiTietSanPham sp : sanPham) {
				System.out.println(sp.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
