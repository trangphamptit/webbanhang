package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import connect.KetNoi;
import model.KhachHang;
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
	
	public static boolean insertNhomSanPham(NhomSanPham sp) {
		try {
			Connection conn = KetNoi.getConnection();
			String sql = "insert into nhomsanpham value (?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setInt(1, sp.getMaNhom());
			ps.setString(2, sp.getTenNhom());
			ps.setString(3, sp.getHinhAnh());
			ps.setInt(4, sp.getTrangThai());
			return ps.executeUpdate() == 1;
		}catch(Exception e) {
			return false;
		}
	}
        public static boolean updateNhomSanPham(NhomSanPham sp){
            try{
                Connection conn = KetNoi.getConnection();
                String sql = "update nhomsanpham set tenNhom = ?, hinhAnh = ?, trangThai = ? where maNhom = ?";
                PreparedStatement ps = conn.prepareCall(sql);
                ps.setString(1, sp.getTenNhom());
                ps.setString(2, sp.getHinhAnh());
                ps.setInt(3, sp.getTrangThai());
                ps.setInt(4, sp.getMaNhom());
                return ps.executeUpdate() == 1;
            }catch(Exception e){
                e.getStackTrace();
            }
            return false;
        }
        public static boolean deleteNhomSanPham(int maNhom){
            try{
                Connection conn = KetNoi.getConnection();
                String sql = "delete from nhomsanpham where maNhom = ?";
                PreparedStatement ps = conn.prepareCall(sql);
                ps.setInt(1, maNhom);
                return ps.executeUpdate() == 1;
            }catch(Exception e){
                return false;
            }
        }
	public static void main(String[] args) throws ClassNotFoundException {
//            NhomSanPhamDAO dao = new NhomSanPhamDAO();
//            for (NhomSanPham ds : dao.layNhomSanPham()){
//                System.out.println(ds.getMaNhom() + " " + ds.getTenNhom() + " " + ds.getHinhAnh() + " " + ds.getTrangThai());
//            }
            //NhomSanPhamDAO.insertNhomSanPham(new NhomSanPham(17, "Dam", "women.html", 1));
            //NhomSanPhamDAO.updateNhomSanPham(new NhomSanPham(17, "Đầm", "#", 0));
            //NhomSanPhamDAO.deleteNhomSanPham(17);
        }
	
}
