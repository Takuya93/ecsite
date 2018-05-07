
package com.internousdev.ecsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {

	/**
	 * アイテム購入個数
	 */
	private int count;

	/**
	 * 支払い方法
	 */
	private String pay;

	public List<BuyItemDTO> buyItemDTOList;

	/**
	 * アイテム情報を格納
	 */
	public Map<String, Object>  session;

	/**
	 * 商品情報取得メソッド
	 *
	 * @author internous
	 */
	public String execute() {
		String result = SUCCESS;
		BuyItemDAO buyItemDAO = new BuyItemDAO();

		// 商品情報取得
		buyItemDTOList = buyItemDAO.getBuyItemInfo();
		session.put("buyItemList", buyItemDTOList);

		return result;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
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
