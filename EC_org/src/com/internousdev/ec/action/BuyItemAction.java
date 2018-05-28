package com.internousdev.ec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.BuyItemDAO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{
	private int count;
	private int pay;
	public List<BuyItemDTO> buyItemDTOList;
	public Map<String,Object> session;

	public String execute(){
		String result = SUCCESS;
		BuyItemDAO buyItemDAO = new BuyItemDAO();

		buyItemDTOList = buyItemDAO.getBuyItemInfo();
		session.put("buyItemList",buyItemDTOList);

		return result;
	}

	public int getCount(){
		return count;
	}
	public void setCount(int count){
		this.count = count;
	}
	public int getPay(){
		return pay;
	}
	public void setPay(int pay){
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

	public List<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList){
		this.buyItemDTOList = buyItemDTOList;
	}

}
