package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.ChiTietDatHang;

public class ChiTietDatHangDAO {
	
//	private static Connection dbConnection;
	private static PreparedStatement dbStatement;
//	private static ResultSet dataFromDB;
	
	public static ArrayList<ChiTietDatHang> getAllCTDH() {
		ArrayList<ChiTietDatHang> ketQua = new ArrayList<>();
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "select * from chitietdathang";
			dbStatement = c.prepareStatement(query);
			
			
			//Step 3: Excute query
			ResultSet rs = dbStatement.executeQuery();
			
			//Step 4: Duyet du lieu
			while(rs.next()){
				int maChiTietDatHang = rs.getInt("maChiTietDatHang");
				int maDatHang = rs.getInt("maDatHang");
				int maSanPham = rs.getInt("maSanPham");
				int soLuong = rs.getInt("soLuong");
				ChiTietDatHang ctdh = new ChiTietDatHang(maChiTietDatHang, maDatHang, maSanPham, soLuong);
				ketQua.add(ctdh);
			}
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ketQua;
	}
	
	public static ArrayList<ChiTietDatHang> getByMaDatHang(int maDatHang) {
		ArrayList<ChiTietDatHang> ketQua = new ArrayList<>();
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "select * from chitietdathang where maDatHang = ?";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, maDatHang);
			
			//Step 3: Excute query
			ResultSet rs = dbStatement.executeQuery();
			
			//Step 4: Duyet du lieu
			while(rs.next()){
				int maChiTietDatHang = rs.getInt("maChiTietDatHang");
				int maDatHangDB = rs.getInt("maDatHang");
				int maSanPham = rs.getInt("maSanPham");
				int soLuong = rs.getInt("soLuong");
				ChiTietDatHang ctdh = new ChiTietDatHang(maChiTietDatHang, maDatHangDB, maSanPham, soLuong);
				ketQua.add(ctdh);
			}
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ketQua;
	}
	
//	public static ArrayList<Menu> getMenuCon() {
//		ArrayList<Menu> ketQua = new ArrayList<>();
//		try {
//			//Step 1: Open connection
//			Connection c = createConnection();
//			
//			//Step 2: Create statement
//			String query = "select * from menu where maMenuCha <> 0";
//			dbStatement = c.prepareStatement(query);
//			
//			
//			//Step 3: Excute query
//			ResultSet rs = dbStatement.executeQuery();
//			
//			//Step 4: Duyet du lieu
//			while(rs.next()){
//				int maMenu = rs.getInt("maMenu");
//				String tenMenu = rs.getString("tenMenu");
//				String link = rs.getString("link");
//				int maMenuCha = rs.getInt("maMenuCha");
//				Menu menu = new Menu(maMenu, tenMenu, link, maMenuCha);
//				ketQua.add(menu);
//			}
//			DBConnection.closeConnection(c);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return ketQua;
//	}
	
	public static Connection createConnection(){
		return DBConnection.getConnection();
	}
	
	public static boolean insert(ChiTietDatHang ctdh) {
		int soDongThayDoi = 0;
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "insert into chitietdathang(maChiTietDatHang, maDatHang, maSanPham, soLuong) "
					+ "value(?, ?, ?, ?)";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, ctdh.getMaChiTietDatHang());
			dbStatement.setInt(2, ctdh.getMaDatHang());
			dbStatement.setInt(3, ctdh.getMaSanPham());
			dbStatement.setInt(4, ctdh.getSoLuong());
			
			//Step 3: Excute query
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static boolean delete(ChiTietDatHang ctdh) {
		int soDongThayDoi = 0;
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "delete from menu where maMenu = ?";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, ctdh.getMaChiTietDatHang());
			
			//Step 3: Excute query
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static boolean updateSoLuong(ChiTietDatHang chiTietDatHang) {
		int soDongThayDoi = 0;
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "update menu set soLuong = ? where maChiTietDatHang = ?";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, chiTietDatHang.getSoLuong());
			dbStatement.setInt(2, chiTietDatHang.getMaChiTietDatHang());
			//Step 3: Excute query
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}

	public static void main(String[] args) {
		
	}

}
