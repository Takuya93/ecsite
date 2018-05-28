package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.internousdev.ec.dto.ItemInsertDTO;
import com.internousdev.ec.dao.ItemInsertDAO;

public class ItemInsertAction extends ActionSupport implements SessionAware{
	private String itemName;
	private String itemPrice;
	private String itemStock;
	private String itemImage;
	public Map<String,Object> session;
	private ItemInsertDTO dto = new ItemInsertDTO();
	private ItemInsertDAO dao = new ItemInsertDAO();
	
	public String execute() throws SQLException{
		String result = ERROR;
		
		if(itemName.length() != 0 && itemPrice.length() != 0 && itemStock.length() != 0 && itemImage.length() !=0) {
			dto = dao.itemInsertInfo(itemName,itemPrice,itemStock,itemImage);
			
			session.put("itemInsertDTO", dto);
			session.put("itemName", itemName);
			session.put("itemPrice", itemPrice);
			session.put("itemStock", itemStock);
			session.put("itemImage", itemImage);
			
			result = SUCCESS;
		}return result;
		
	}
	
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItamPrice() {
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
	
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
	
	
	

}
