package com.internousdev.ecsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SearchItemAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	public	String	searchName;

	public List<BuyItemDTO> buyItemDTOList;

	public String execute() {

		String result = SUCCESS;

		session.remove("searchItem");
		session.remove("buyItemList");

		BuyItemDAO buyItemDAO = new BuyItemDAO();
		buyItemDTOList = buyItemDAO.getSelectBuyItemName(searchName);

		System.out.println(buyItemDTOList.get(0).getItemName());

		session.put("buyItemList", buyItemDTOList);

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return searchName
	 */
	public String getSearchName() {
		return searchName;
	}

	/**
	 * @param searchName セットする searchName
	 */
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}

	/**
	 * @return buyItemDTOList
	 */
	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	/**
	 * @param buyItemDTOList セットする buyItemDTOList
	 */
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}
}
