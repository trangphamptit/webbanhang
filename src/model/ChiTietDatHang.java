package model;

public class ChiTietDatHang {
	private int maDatHang;
	private int maSanPham;
	private int soLuong;
	
	public ChiTietDatHang(int maDatHang, int maSanPham, int soLuong) {
		this.maDatHang = maDatHang;
		this.maSanPham = maSanPham;
		this.soLuong = soLuong;
	}
	
	public ChiTietDatHang() {
	}

	public int getMaDatHang() {
		return maDatHang;
	}

	public void setMaDatHang(int maDatHang) {
		this.maDatHang = maDatHang;
	}

	public int getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(int maSanPham) {
		this.maSanPham = maSanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	@Override
	public String toString() {
		return "ChiTietDatHang [maDatHang=" + maDatHang + ", maSanPham="
				+ maSanPham + ", soLuong=" + soLuong + "]";
	}
	
}
