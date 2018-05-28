package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.ItemInventoryDAO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemInventoryConfirmAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	
	private ArrayList<BuyItemDTO> buyItemDTOList = new ArrayList<>();
	
	
	public String execute() throws SQLException{
		
		@SuppressWarnings("unchecked")
		List<BuyItemDTO> list = (ArrayList<BuyItemDTO>) session.get("list");
		
		for(int i=0; i < list.size(); i++) {
			int count = list.get(i).getCount();
			int totalCount = list.get(i).getTotal_count();
			String itemName = list.get(i).getItemName();
			String itemImage = list.get(i).getItemImage();
			
			int id = list.get(i).getId();
			
			BuyItemDTO buyItemDTO = new BuyItemDTO();
			buyItemDTO.setItemName(itemName);
			buyItemDTO.setItemImage(itemImage);
			buyItemDTO.setTotal_count(totalCount);
			buyItemDTO.setCount(count);
			
			buyItemDTOList.add(buyItemDTO);
			
			ItemInventoryDAO itemInventoryDAO = new ItemInventoryDAO();
			itemInventoryDAO.itemInfo(totalCount, id);
		}
		String result = SUCCESS;
		return result;
	}
	
	public ArrayList<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}
	public void setBuyItemDTOList(ArrayList<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}
	
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
