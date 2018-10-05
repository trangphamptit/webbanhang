package model;

import java.util.Date;

public class ChiTietSanPham {
	private int maSanPham;
	private String tenSanPham;
	private long gia;
	private long giaGiam;
	private String hinhAnh;
	private int trangThai;
	private String chiTiet;//
	private Date ngay;//
	private int maNhom;

	public ChiTietSanPham(int maSanPham, String tenSanPham, long gia, long giaGiam, String hinhAnh, int trangThai, String chiTiet,
			Date ngay, int maNhom) {
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.gia = gia;
		this.giaGiam = giaGiam;
		this.hinhAnh = hinhAnh;
		this.trangThai = trangThai;
		this.chiTiet = chiTiet;
		this.ngay = ngay;
		this.maNhom = maNhom;
	}
	
	public ChiTietSanPham() {
	}

	public int getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(int maSanPham) {
		this.maSanPham = maSanPham;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public long getGiaGiam() {
		return giaGiam;
	}

	public void setGiaGiam(long giaGiam) {
		this.giaGiam = giaGiam;
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

	public String getChiTiet() {
		return chiTiet;
	}

	public void setChiTiet(String chiTiet) {
		this.chiTiet = chiTiet;
	}

	public Date getNgay() {
		return ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public int getMaNhom() {
		return maNhom;
	}

	public void setMaNhom(int maNhom) {
		this.maNhom = maNhom;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	@Override
	public String toString() {
		return "ChiTietSanPham [maSanPham=" + maSanPham + ", tenSanPham=" + tenSanPham + ", gia=" + gia + ", giaGiam="
				+ giaGiam + ", hinhAnh=" + hinhAnh + ", trangThai=" + trangThai + ", chiTiet=" + chiTiet + ", ngay="
				+ ngay + ", maNhom=" + maNhom + "]";
	}
	

}
