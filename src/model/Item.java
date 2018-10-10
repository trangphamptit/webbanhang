package model;

public class Item {
	private ChiTietSanPham item;
	private int soLuong;

	public Item() {
		// TODO Auto-generated constructor stub
	}

	public Item(ChiTietSanPham item, int soLuong) {
		this.item = item;
		this.soLuong = soLuong;
	}

	public ChiTietSanPham getItem() {
		return item;
	}

	public void setItem(ChiTietSanPham item) {
		this.item = item;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

}
