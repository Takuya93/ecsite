package com.internousdev.ec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.BuyItemDAO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoItemInventoryAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private BuyItemDTO buyItemDTO = new BuyItemDTO();
	private List<BuyItemDTO> buyItemDTOList;
	
	public String execute() {
		String result;
		
		buyItemDTOList = buyItemDAO.getBuyItemInfo();
		
		session.put("buyItemDTOList", buyItemDTOList);
		session.put("id", buyItemDTO.getId());
		
		result= SUCCESS;
		return result;
	}
	
	public List<BuyItemDTO> getBuyItemDTOList(){
		return buyItemDTOList;
	}
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
