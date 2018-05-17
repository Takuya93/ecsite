package com.internousdev.ec.dto;

public class CartDTO {
	private String pay;
	private int id;
	private String userId;
	private int itemId;
	private int totalPrice;
	private int buyCount;
	private String itemName;
	private String itemPrice;

	public String getPay(){
		return pay;
	}
	public void setPay(String pay){
		this.pay = pay;
	}
	public String getUserId(){
		return userId;
	}
	public void setUserId(String userId){
		this.userId = userId;
	}
	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName = itemName;
	}
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	public int getItemId(){
		return itemId;
	}
	public void setItemId(int itemId){
		this.itemId = itemId;
	}
	public int getTotalPrice(){
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice){
		this.totalPrice = totalPrice;
	}
	public int getBuyCount(){
		return buyCount;
	}
	public void setBuyCount(int buyCount){
		this.buyCount = buyCount;
	}
	public String getItemPrice(){
		return itemPrice;
	}
	public void setItemPrice(String itemPrice){
		this.itemPrice = itemPrice;
	}

}
