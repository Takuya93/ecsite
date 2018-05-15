package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.MyPageDAO;
import com.internousdev.ec.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	private MyPageDAO myPageDAO = new MyPageDAO();
	public ArrayList<MyPageDTO> myPageList = new ArrayList<MyPageDTO>();

	private String deleteFlg;
	private String message;

	public String execute() throws SQLException{
		if(!session.containsKey("login_user_id")){
			return ERROR;
		}

		if(deleteFlg == null){
			String user_master_id = session.get("login_user_id").toString();

			myPageList = myPageDAO.getMyPageUserInfo(user_master_id);

			Iterator<MyPageDTO> iterator = myPageList.iterator();
			if(!(iterator.hasNext())){
				myPageList = null;
			}
		}else if(deleteFlg.equals("1")){
			delete();
		}

		String result = SUCCESS;
		return result;
	}

	public void delete() throws SQLException{
		String user_master_id = session.get("login_user_id").toString();

		int res = myPageDAO.buyItemHistoryDelete(user_master_id);

		if(res>0){
			myPageList = null;
			setMessage("商品情報を正しく削除しました。");
		}else{
			setMessage("商品情報の削除に失敗しました。");
		}
	}


public String getDeleteFlg(){
	return deleteFlg;
}
public void setDeleteFlg(String deleteFlg){
	this.deleteFlg = deleteFlg;
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
