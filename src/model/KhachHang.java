package model;

<<<<<<< HEAD
public class KhachHang {
	private int maKhachHang;
	private String tenKhachHang;
	private String ngaySinh;
	private String diaChi;
	private String soDienThoai;
	private String email;
	
	public KhachHang(int maKhachHang, String tenKhachHang, String ngaySinh, String diaChi, String soDienThoai, String email) {
		this.maKhachHang = maKhachHang;
		this.tenKhachHang=tenKhachHang;
		this.ngaySinh=ngaySinh;
		this.diaChi=diaChi;
		this.soDienThoai=soDienThoai;
		this.email=email;
	}


	public KhachHang() {}
	
	public int getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(int maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	
	public String toString() {
		return "KhachHang [maKhachHang=" + maKhachHang + ", tenKhachHang=" + tenKhachHang + ", ngaySinh=" + ngaySinh + ", diaChi=" + diaChi +", soDienThoai=" + soDienThoai + ", email=" + email + "]";
=======
import java.util.Date;

public class KhachHang {
	private int maKhachHang;
	private Date ngaySinh;
	private String diaChi;
	private String tenKhachHang;
	private String soDienThoai;
	private String email;
	
	public KhachHang() {}
	
	public KhachHang (int maKhachHang, Date ngaySinh, String diaChi, String tenKhachHang, String soDienThoai, String email) {
		this.maKhachHang = maKhachHang;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.tenKhachHang = tenKhachHang;
		this.soDienThoai = soDienThoai;
		this.email = email;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public int getMaKhachHang() {
		return maKhachHang;
	}
	public void setMaKhachHang(int maKhachHang) {
		this.maKhachHang = maKhachHang;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String toString() {
		return "KhachHang [maKhachHang=" + maKhachHang + ", tenKhachHang=" + tenKhachHang + ", ngaySinh="+ ngaySinh + ", soDienThoai=" + soDienThoai + ", diaChi=" + diaChi + ", email="+ email+ "]";
>>>>>>> 294894ddb6c539a851c56304bcf7f1bb3b109b2e
	}
}
