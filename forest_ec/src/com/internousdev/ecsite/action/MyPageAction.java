package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.MyPageDAO;
import com.internousdev.ecsite.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware{

	/**
	 * ログイン情報を格納
	 */
	public Map<String, Object> session;

	/**
	 * マイページ情報取得DAO
	 */
	private MyPageDAO myPageDAO = new MyPageDAO();

	/**
	 * マイページ情報格納DTO
	 */
	public ArrayList<MyPageDTO> myPageList = new ArrayList<MyPageDTO>();

	/**
	 * 削除フラグ
	 */
	private String deleteFlg;

	private String message;

	/**
	 * 商品履歴取得メソッド
	 *
	 * @author internous
	 */
	public String execute() throws SQLException {

		if (!session.containsKey("login_user_id")) {
			return ERROR;
		}

		// 商品履歴を削除しない場合
		if(deleteFlg == null) {
			String user_master_id = session.get("login_user_id").toString();

			myPageList = myPageDAO.getMyPageUserInfo(user_master_id);

			Iterator<MyPageDTO> iterator = myPageList.iterator();
			if (!(iterator.hasNext())) {
				myPageList = null;
			}
		// 商品履歴を削除する場合
		} else if(deleteFlg.equals("1")) {
			delete();
		}

		String result = SUCCESS;
		return result;
	}

	/**
	 * 商品履歴削除
	 *
	 * @throws SQLException
	 */
	public void delete() throws SQLException {

		String user_master_id = session.get("login_user_id").toString();

		int res = myPageDAO.buyItemHistoryDelete(user_master_id);

		if(res > 0) {
			myPageList = null;
			setMessage("商品情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}



	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
