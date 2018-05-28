package com.internousdev.ec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.BuyItemDAO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SearchItemAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	public String searchName;
	public List<BuyItemDTO> buyItemDTOList;

	public String execute(){
		String result = ERROR;

		session.remove("searchItem");
		session.remove("buyItemList");

		BuyItemDAO buyItemDAO = new BuyItemDAO();
		buyItemDTOList = buyItemDAO.getSelectBuyItemName(searchName);

		System.out.println(buyItemDTOList.get(0).getItemName());

		session.put("buyItemList",buyItemDTOList);
		
		result = SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

	public String getSearchName(){
		return searchName;
	}
	public void setSearchName(String searchName){
		this.searchName = searchName;
	}

	public List<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList){
		this.buyItemDTOList = buyItemDTOList;
	}

}
