package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
<<<<<<< HEAD
import java.sql.Connection;
=======

import com.mysql.jdbc.Connection;

>>>>>>> 294894ddb6c539a851c56304bcf7f1bb3b109b2e
import connect.KetNoi;
import model.KhachHang;

public class KhachHangDAO {
<<<<<<< HEAD
	
	private static PreparedStatement dbStatement;
	
	public static ArrayList<KhachHang> getKhachHangTheoMa(int maKhachHang) throws SQLException {
        Connection connection = KetNoi.getConnection();
        String sql = "SELECT * FROM khachhang WHERE maKhachHang = ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, maKhachHang);
        ResultSet rs = ps.executeQuery();
        ArrayList<KhachHang> list = new ArrayList<>();
        while (rs.next()) {
        	KhachHang khachHang = new KhachHang();
            khachHang.setMaKhachHang(rs.getInt("maKhachHang"));
            khachHang.setTenKhachHang(rs.getString("tenKhachHang"));
            khachHang.setNgaySinh(rs.getString("ngaySinh"));
            khachHang.setDiaChi(rs.getString("diaChi"));
            khachHang.setSoDienThoai(rs.getString("soDienThoai"));
            khachHang.setEmail(rs.getString("email"));
            list.add(khachHang);
        }
        return list;
    }
	
	public static ArrayList<KhachHang> getKhachHangTheoTen(String tenKhachHang) throws SQLException{
		 Connection connection = KetNoi.getConnection();
	        String sql = "SELECT * FROM khachhang WHERE tenKhachHang = ?";
	        PreparedStatement ps = connection.prepareStatement(sql);
	        ps.setString(1, tenKhachHang);
	        ResultSet rs = ps.executeQuery();
	        ArrayList<KhachHang> list = new ArrayList<>();
	        while (rs.next()) {
				KhachHang khachHang = new KhachHang();
				khachHang.setMaKhachHang(rs.getInt("maKhachHang"));
	            khachHang.setTenKhachHang(rs.getString("tenKhachHang"));
	            khachHang.setNgaySinh(rs.getString("ngaySinh"));
	            khachHang.setDiaChi(rs.getString("diaChi"));
	            khachHang.setSoDienThoai(rs.getString("soDienThoai"));
	            khachHang.setEmail(rs.getString("email"));
	            list.add(khachHang);
	        }
		return list;
	}
	
	public static Connection createConnection(){
		return DBConnection.getConnection();
	}
	
	public static boolean insert(KhachHang kh) {
		int soDongThayDoi = 0;
		try {
			Connection c = createConnection();
			String query = "insert into khachhang(maKhachHang, tenKhachHang, ngaySinh, diaChi, soDienThoai, email) "
					+ "value(?, ?, ?, ?, ?, ?)";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, kh.getMaKhachHang());
			dbStatement.setString(2, kh.getTenKhachHang());
			dbStatement.setString(3, kh.getNgaySinh());
			dbStatement.setString(4, kh.getDiaChi());
			dbStatement.setString(5, kh.getSoDienThoai());
			dbStatement.setString(2, kh.getEmail());
			
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static boolean delete(KhachHang kh) {
		int soDongThayDoi = 0;
		try {
			Connection c = createConnection();
			
			String query = "delete from menu where maKhachHang = ?"; /*and tenKhachHang = ?";*/
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, kh.getMaKhachHang());
			/*dbStatement.setInt(2, ctdh.getMaSanPham());*/
			
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static void main(String[] args) {
		try {
			ArrayList<KhachHang> khachHang= getKhachHangTheoMa(1);
			for (KhachHang sp : khachHang) {
				System.out.println(sp.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
=======
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
	
	
>>>>>>> 294894ddb6c539a851c56304bcf7f1bb3b109b2e
}
