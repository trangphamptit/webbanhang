package model;

public class Menu {
	private int maMenu;
	private String tenMenu;
	private String link;
	private int maMenuCha;
	
	public Menu(int maMenu, String tenMenu, String link, int maMenuCha) {
		this.maMenu = maMenu;
		this.tenMenu = tenMenu;
		this.link = link;
		this.maMenuCha = maMenuCha;
	}
	
	public int getMaMenu() {
		return maMenu;
	}
	public void setMaMenu(int maMenu) {
		this.maMenu = maMenu;
	}
	public String getTenMenu() {
		return tenMenu;
	}
	public void setTenMenu(String tenMenu) {
		this.tenMenu = tenMenu;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getMaMenuCha() {
		return maMenuCha;
	}
	public void setMaMenuCha(int maMenuCha) {
		this.maMenuCha = maMenuCha;
	}

	@Override
	public String toString() {
		return "Menu [maMenu=" + maMenu + ", tenMenu=" + tenMenu + ", link=" + link + ", maMenuCha=" + maMenuCha + "]";
	}
}
