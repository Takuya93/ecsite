package com.internousdev.ec.dto;

public class BuyItemDTO {
	public int id;
	public String itemImage;
	public String itemName;
	public String itemPrice;

	public String getItemImage(){
		return itemImage;
	}
	public void setItemImage(String itemImage){
		this.itemImage = itemImage;
	}
	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemname){
		this.itemName = itemname;
	}
	public String getItemPrice(){
		return itemPrice;
	}
	public void setItemPrice(String itemPrice){
		this.itemPrice = itemPrice;
	}
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}

}
