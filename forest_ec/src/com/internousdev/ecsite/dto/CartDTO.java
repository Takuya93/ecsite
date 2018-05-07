package com.internousdev.ecsite.dto;

public class CartDTO {

	private int id;

	private String userId;

	private int itemId;

	private int totalPrice;

	private int buyCount;

	private String itemName;

	private String pay;

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId セットする userId
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return itemId
	 */
	public int getItemId() {
		return itemId;
	}

	/**
	 * @param itemId セットする itemId
	 */
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	/**
	 * @return totalPrice
	 */
	public int getTotalPrice() {
		return totalPrice;
	}

	/**
	 * @param totalPrice セットする totalPrice
	 */
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	/**
	 * @return buyCount
	 */
	public int getBuyCount() {
		return buyCount;
	}

	/**
	 * @param buyCount セットする buyCount
	 */
	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}

	/**
	 * @return itemName
	 */
	public String getItemName() {
		return itemName;
	}

	/**
	 * @param itemName セットする itemName
	 */
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	/**
	 * @return pay
	 */
	public String getPay() {
		return pay;
	}

	/**
	 * @param pay セットする pay
	 */
	public void setPay(String pay) {
		this.pay = pay;
	}
}