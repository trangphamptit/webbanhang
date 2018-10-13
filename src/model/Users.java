package model;

public class Users {
	private int maKhachHang;
	private String email;
	private String pass;
	private boolean role;

	public Users(int maKhachHang, String email, String pass, boolean role) {
		this.maKhachHang = maKhachHang;
		this.email = email;
		this.pass = pass;
		this.role = role;
	}

	public Users() {
		// TODO Auto-generated constructor stub
	}

	public int getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(int maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public boolean isRole() {
		return role;
	}

	public void setRole(boolean role) {
		this.role = role;
	}

}
