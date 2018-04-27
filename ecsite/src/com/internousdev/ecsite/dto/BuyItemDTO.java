package com.internousdev.ecsite.dto;

public class BuyItemDTO {
	public int id;
	public String itemName;
	public String itemPrice;


	public String getItemName(){
		return this.itemName;
	}
	public void setItemName(String itemName){
		this.itemName = itemName;
	}
	public String getItemPrice(){
		return this.itemPrice;
	}
	public void setItemPrice(String itemPrice){
		this.itemPrice = itemPrice;
	}
	public int getId(){
		return this.id;
	}
	public void setId(int id){
		this.id = id;
	}

}
