package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	private HashMap<Long, Item> cardItems;

	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Cart(HashMap<Long, Item> cardItems) {
		this.cardItems = cardItems;
	}

	public HashMap<Long, Item> getcardItems() {
		return cardItems;
	}

	public void setcardItems(HashMap<Long, Item> cardItems) {
		this.cardItems = cardItems;
	}

//them sp
	public void insertItem(Long key, Item item) {
		boolean check = cardItems.containsKey(key);
		if (check) {
			int soLuongCu = item.getSoLuong();
			item.setSoLuong(soLuongCu + 1);
			cardItems.put(key, item);

		}else {
			cardItems.put(key, item);
		}
	}
	public void subItem(Long key) {
		boolean check = cardItems.containsKey(key);
		if(check) {
			cardItems.remove(key);
		}
	}
	public int countItem() {
		return cardItems.size();
	}
	public long totalCart() {
		long count = 0;
		for(Map.Entry<Long, Item> list: cardItems.entrySet()) {
			count += list.getValue().getItem().getGia() * list.getValue().getSoLuong();
		}
		return count;
	}
	
}
