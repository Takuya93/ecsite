package com.internousdev.ec.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{
	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String,Object> session;
	private String errorMassage;

	public String execute(){

		String result = SUCCESS;

		if(!(loginUserId.equals("")) & !(loginPassword.equals("")) & !(userName.equals(""))){
			session.put("loginUserId",loginUserId);
			session.put("loginPassword",loginPassword);
			session.put("userName",userName);
		}else if(loginUserId.equals("")){
			setErrorMassage("IDが入力されていません。");
			result = ERROR;
		}else if(loginPassword.equals("")){
			setErrorMassage("パスワードが入力されていません。");
			result = ERROR;
		}else if(userName.equals("")){
		setErrorMassage("ユーザー名が入力されていません。");
		result = ERROR;
	}

		return result;
	}

	public String getLoginUserId(){
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId){
		this.loginUserId = loginUserId;
	}
	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword = loginPassword;
	}
	public String getUserName(String userName){
		return userName;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
	public String getErrorMassage(){
		return errorMassage;
	}
	public void setErrorMassage(String errorMassage){
		this.errorMassage   = errorMassage;
	}

}
