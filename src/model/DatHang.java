package model;

import java.sql.Date;

public class DatHang {
	private int maDatHang;
	private int maKhachHang;
	private long tongTien;
	private Date ngayDat;
	private int trangThai;
	public DatHang(int maDatHang, int maKhachHang, long tongTien, Date ngayDat, int trangThai) {
		super();
		this.maDatHang = maDatHang;
		this.maKhachHang = maKhachHang;
		this.tongTien = tongTien;
		this.ngayDat = ngayDat;
		this.trangThai = trangThai;
	}
	public DatHang() {
		super();
	}
	public int getMaDatHang() {
		return maDatHang;
	}
	public void setMaDatHang(int maDatHang) {
		this.maDatHang = maDatHang;
	}
	public int getMaKhachHang() {
		return maKhachHang;
	}
	public void setMaKhachHang(int maKhachHang) {
		this.maKhachHang = maKhachHang;
	}
	public long getTongTien() {
		return tongTien;
	}
	public void setTongTien(long tongTien) {
		this.tongTien = tongTien;
	}
	public Date getNgayDat() {
		return ngayDat;
	}
	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	@Override
	public String toString() {
		return "DatHang [maDatHang=" + maDatHang + ", maKhachHang=" + maKhachHang + ", tongTien=" + tongTien
				+ ", ngayDat=" + ngayDat + ", trangThai=" + trangThai + "]";
	}
	
}
