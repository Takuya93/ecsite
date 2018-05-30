package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.BuyItemCompleteDAO;
import com.internousdev.ec.dao.CartDAO;
import com.internousdev.ec.dto.CartDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCompleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	public String deleteFlg;
	private String message;
	public String purchase;
	public String delete;
	
	public String execute() throws SQLException{
		
		
		String result = ERROR;
		if(purchase != null) {
		@SuppressWarnings("unchecked")
		List<CartDTO> cartDTOList = (List<CartDTO>) session.get("cartDTOList");
		BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();

		CartDAO cartDAO = new CartDAO();
		result = SUCCESS;

		
		if(cartDTOList == null) {
			return ERROR;
		}
		
		for(int i=0; i < cartDTOList.size(); i++){
			buyItemCompleteDAO.buyItemInfo(cartDTOList.get(i).getUserId(), cartDTOList.get(i).getItemId(),cartDTOList.get(i).getTotalPrice(),cartDTOList.get(i).getBuyCount(),cartDTOList.get(i).getPay());
		}

		System.out.println(session.get("login_user_id"));
		cartDAO.deleteCartInfo(session.get("login_user_id").toString());
		
		session.remove("cartDTOList");
		session.remove("totalPriceAll");
		}
		
		
		if(delete != null) {
			delete();
			return "delete";
		}

		return result;
	}
	
	public void delete() throws SQLException{
		String cart_id = session.get("login_user_id").toString();
		CartDAO cartDAO = new CartDAO();
		List<CartDTO> res = cartDAO.deleteCartInfo(cart_id);
		
		if(res.isEmpty()){
			session.remove("cartDTOList");
			session.remove("totalPriceAll");
		}
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
	public String getMessage(){
		return message;
	}
	public void setMessage(String message){
		this.message = message;
	}
}
