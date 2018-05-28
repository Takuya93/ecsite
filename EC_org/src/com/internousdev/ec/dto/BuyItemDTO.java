package com.internousdev.ec.dto;

public class BuyItemDTO {
	public int id;
	public String itemImage;
	public String itemName;
	public String itemPrice;
	public int itemStock;
	public int count;
	public int total_count;

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
	public int getItemStock() {
		return itemStock;
	}
	public void setItemStock(int itemStock) {
		this.itemStock = itemStock;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotal_count() {
		return total_count;
	}
	public void setTotal_count(int total_count) {
		this.total_count = total_count;
	}
	

}
