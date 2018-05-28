package com.internousdev.ec.dto;

public class ItemInsertDTO {
	private String itemName;
	private String itemPrice;
	private String itemStock;
	private String itemImage;
	
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemStock() {
		return itemStock;
	}
	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}

}
