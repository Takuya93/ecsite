package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.MyPageDAO;
import com.internousdev.ec.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoMyPageAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	public ArrayList<MyPageDTO> myPageList = new ArrayList<MyPageDTO>();
	
	public String execute() throws SQLException{
		String result = SUCCESS;
		if(!session.containsKey("login_user_id")){
			return ERROR;
		}
		return result;
	}
	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}
