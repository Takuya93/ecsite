package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.internousdev.ec.dao.UserDeleteDAO;

import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport implements SessionAware{
	Map<String,Object> session;
	private String deleteFlg;
	
	public String execute() throws SQLException{
		String result = ERROR;
		
		if(deleteFlg != null) {
			delete();
			session.clear();
			result = SUCCESS;
		}
		return result;
	}
	
	public void delete() throws SQLException{
		String deleteId = session.get("login_user_id").toString();
		UserDeleteDAO userDeleteDAO = new UserDeleteDAO();
		userDeleteDAO.userDeleteInfo(deleteId);
	}
	
	public String getDeleteFlg() {
		return deleteFlg;
	}
	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	
	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}
