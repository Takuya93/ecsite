package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.websocket.Session;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.ItemDeleteDAO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDeleteConfirmAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	
	public String execute() throws SQLException{
		
		@SuppressWarnings("unchecked")
		List<String> deleteName = (List<String>) session.get("deleteName");
		
		for(int i=0; i<deleteName.size(); i++) {
			
			@SuppressWarnings("unchecked")
			List<BuyItemDTO> list = (List<BuyItemDTO>) session.get("itemDeleteList");
			String itemName = list.get(i).getItemName();
			
			ItemDeleteDAO dao = new ItemDeleteDAO();
			dao.itemDeleteInfo(itemName);
		}
		String result = SUCCESS;
		return result;
	}
	
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
