package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.CartDAO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.internousdev.ec.dto.CartDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport implements SessionAware{

	public Map<String,Object> session;
	private int count;
	int totalPriceAll = 0;

	public String execute() throws NumberFormatException, SQLException{

		String result=SUCCESS;

		BuyItemDTO buyItemDTO = new BuyItemDTO();
		buyItemDTO = (BuyItemDTO) session.get("buyItems");
		CartDAO cartDAO = new CartDAO();


		session.put("buy_count",count);
		session.put("total_price", (Integer.parseInt(buyItemDTO.getItemPrice()) * count ));

	cartDAO.createCart(session.get("login_user_id").toString(), buyItemDTO.getId(), buyItemDTO.getItemPrice(), Integer.parseInt(session.get("total_price").toString()), Integer.parseInt(session.get("buy_count").toString()),session.get("pay").toString());

	List<CartDTO> cartDTOList = cartDAO.getCartInfo(session.get("login_user_id").toString());




	Iterator<CartDTO> iterator = cartDTOList.iterator();
	if(!(iterator.hasNext())){

		totalPriceAll = totalPriceAll + Integer.parseInt(session.get("total_price").toString());

	}

	session.put("totalPriceAll", String.valueOf(totalPriceAll));

	session.put("cartDTOList",cartDTOList);

	return result;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

	public int getCount(){
		return count;
	}

	public void setCount(int count){
		this.count = count;
	}
}
