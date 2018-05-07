
package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dao.CartDAO;
import com.internousdev.ecsite.dto.CartDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCompleteAction extends ActionSupport implements SessionAware{

	public Map<String,Object> session;

	/**
	 * 商品購入情報登録完了メソッド
	 *
	 * @author internous
	 * @throws SQLException
	 */
	public String execute() throws SQLException {

		// 各変数用意
		@SuppressWarnings("unchecked")
		List<CartDTO> cartDTOList = (List<CartDTO>) session.get("cartDTOList");
		BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();

		CartDAO cartDAO = new CartDAO();
		String result = SUCCESS;

		for(int i=0; i < cartDTOList.size(); i++) {
			// 購入履歴テーブル登録メソッド
			buyItemCompleteDAO.buyItemeInfo(cartDTOList.get(i).getUserId(), cartDTOList.get(i).getItemId(), cartDTOList.get(i).getTotalPrice(), cartDTOList.get(i).getBuyCount(), cartDTOList.get(i).getPay());
		}

		// 削除メソッド
		System.out.println(session.get("login_user_id"));
		cartDAO.deleteCartInfo(session.get("login_user_id").toString());

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
