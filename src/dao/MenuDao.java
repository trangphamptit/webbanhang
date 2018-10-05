package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Menu;

public class MenuDao {
//	private static Connection dbConnection;
	private static PreparedStatement dbStatement;
//	private static ResultSet dataFromDB;
	
	public static ArrayList<Menu> getAllMenu() {
		ArrayList<Menu> ketQua = new ArrayList<>();
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "select * from menu";
			dbStatement = c.prepareStatement(query);
			
			
			//Step 3: Excute query
			ResultSet rs = dbStatement.executeQuery();
			
			//Step 4: Duyet du lieu
			while(rs.next()){
				int maMenu = rs.getInt("maMenu");
				String tenMenu = rs.getString("tenMenu");
				String link = rs.getString("link");
				int maMenuCha = rs.getInt("maMenuCha");
				Menu menu = new Menu(maMenu, tenMenu, link, maMenuCha);
				ketQua.add(menu);
			}
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ketQua;
	}
	
	public static ArrayList<Menu> getMenuCha() {
		ArrayList<Menu> ketQua = new ArrayList<>();
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "select * from menu where maMenuCha = 0";
			dbStatement = c.prepareStatement(query);
			
			
			//Step 3: Excute query
			ResultSet rs = dbStatement.executeQuery();
			
			//Step 4: Duyet du lieu
			while(rs.next()){
				int maMenu = rs.getInt("maMenu");
				String tenMenu = rs.getString("tenMenu");
				String link = rs.getString("link");
				int maMenuCha = rs.getInt("maMenuCha");
				Menu menu = new Menu(maMenu, tenMenu, link, maMenuCha);
				ketQua.add(menu);
			}
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ketQua;
	}
	
	public static ArrayList<Menu> getMenuCon(int maMenuCha) {
		ArrayList<Menu> ketQua = new ArrayList<>();
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "select * from menu where maMenuCha = ?";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, maMenuCha);
			
			
			//Step 3: Excute query
			ResultSet rs = dbStatement.executeQuery();
			
			//Step 4: Duyet du lieu
			while(rs.next()){
				int maMenu = rs.getInt("maMenu");
				String tenMenu = rs.getString("tenMenu");
				String link = rs.getString("link");
				int maMenuC = rs.getInt("maMenuCha");
				Menu menu = new Menu(maMenu, tenMenu, link, maMenuC);
				ketQua.add(menu);
			}
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ketQua;
	}
	
	

	public static Menu selectByMa(int ma) {
		Menu ketQua = null;
		try {
			//Step 1: Open connection
			Connection dbConnection = createConnection();
			
			//Step 2: Create statement
			String query = "select * from menu where maMenu = ?";
			dbStatement = dbConnection.prepareStatement(query);
			dbStatement.setInt(1, ma);
			
			//Step 3: Excute query
			ResultSet menu = dbStatement.executeQuery();
			
			//Step 4: Duyet du lieu
			while(menu.next()){
				int maMenu = menu.getInt("maMenu");
				String tenMenu = menu.getString("tenMenu");
				String link = menu.getString("link");
				int maMenuCha = menu.getInt("maMenuCha");
				ketQua = new Menu(maMenu, tenMenu, link, maMenuCha);
			}
			DBConnection.closeConnection(dbConnection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ketQua;
	}
	
	
	
	public static Connection createConnection(){
		return DBConnection.getConnection();
	}
	
	public static boolean insert(Menu menu) {
		int soDongThayDoi = 0;
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "insert into menu(maMenu, tenMenu, link, maMenuCha) value(?, ?, ?, ?)";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, menu.getMaMenu());
			dbStatement.setString(2, menu.getTenMenu());
			dbStatement.setString(3, menu.getLink());
			dbStatement.setInt(4, menu.getMaMenuCha());
			
			//Step 3: Excute query
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static boolean delete(Menu menu) {
		int soDongThayDoi = 0;
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "delete from menu where maMenu = ?";
			dbStatement = c.prepareStatement(query);
			dbStatement.setInt(1, menu.getMaMenu());
			
			//Step 3: Excute query
			soDongThayDoi = dbStatement.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static boolean updateTenMenu(Menu menu) {
		int soDongThayDoi = 0;
		try {
			//Step 1: Open connection
			Connection c = createConnection();
			
			//Step 2: Create statement
			String query = "update menu set tenMenu = ? where maMenu = ?";
			PreparedStatement update = c.prepareStatement(query);
			update.setString(1, menu.getTenMenu());
			update.setInt(2, menu.getMaMenu());
			//Step 3: Excute query
			soDongThayDoi = update.executeUpdate();
			DBConnection.closeConnection(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return soDongThayDoi > 0;
	}
	
	public static void main(String[] args) {
		ArrayList<Menu> menus = getMenuCon(1);
		for(Menu menu: menus) {
			System.out.println(menu.toString());
		}
	}
}
