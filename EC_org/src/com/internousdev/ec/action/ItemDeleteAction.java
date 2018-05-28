package com.internousdev.ec.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dto.BuyItemDTO;
import com.mysql.fabric.xmlrpc.base.Array;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDeleteAction extends ActionSupport implements SessionAware{
	private List<String> deleteName;
	private ArrayList<BuyItemDTO> itemDeleteList = new ArrayList<>();
	public Map<String,Object> session;
	
	public String execute() {
		
		session.put("deleteName", deleteName);
		session.put("itemDeleteListSize", deleteName.size());
		
		for(int i=0; i < deleteName.size(); i++) {
			String itemName = deleteName.get(i);
			BuyItemDTO buyItemDTO = new BuyItemDTO();
			buyItemDTO.setItemName(itemName);
			itemDeleteList.add(buyItemDTO);
			
			session.put("itemDeleteList", itemDeleteList);
		}
		String result = SUCCESS;
		return result;
	}
	
	public List<String> getDeleteName(){
		return deleteName;
	}
	public void setDeleteName(List<String> deleteName) {
		this.deleteName = deleteName;
	}
	public ArrayList<BuyItemDTO> getItemDeleteList(){
		return itemDeleteList;
	}
	public void setItemDeleteList(ArrayList<BuyItemDTO> itemDeleteList) {
		this.itemDeleteList = itemDeleteList;
	}
	
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
