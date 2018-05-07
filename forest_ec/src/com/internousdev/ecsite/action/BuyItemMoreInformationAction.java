package com.internousdev.ecsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemMoreInformationAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	private int id;

	@SuppressWarnings("unchecked")
	public String execute() {

		String result = SUCCESS;

		List<BuyItemDTO> buyItemDTOList = (List<BuyItemDTO>) session.get("buyItemList");
		session.put("selectItemId", buyItemDTOList.get(id-1).getId());

		BuyItemDAO buyItemDAO = new BuyItemDAO();
		BuyItemDTO buyItemDTO = new BuyItemDTO();

		buyItemDTO = buyItemDAO.getSelectBuyItemInfo(Integer.parseInt(session.get("selectItemId").toString()));
		System.out.println(buyItemDTO.getId());
		session.put("buyItems", buyItemDTO);

		return result;
	}

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

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
