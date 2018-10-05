package model;

public class NhomSanPham {
	private int maNhom;
	private String tenNhom;
	private String hinhAnh;
	private int trangThai;

	public NhomSanPham(int maNhom, String tenNhom, String hinhAnh, int trangThai) {
		this.maNhom = maNhom;
		this.tenNhom = tenNhom;
		this.hinhAnh = hinhAnh;
		this.trangThai = trangThai;
	}
	

	public NhomSanPham() {
		// TODO Auto-generated constructor stub
	}


	public int getMaNhom() {
		return maNhom;
	}

	public void setMaNhom(int maNhom) {
		this.maNhom = maNhom;
	}

	public String getTenNhom() {
		return tenNhom;
	}

	public void setTenNhom(String tenNhom) {
		this.tenNhom = tenNhom;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

}
