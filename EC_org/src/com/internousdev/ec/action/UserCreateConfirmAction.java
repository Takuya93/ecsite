package com.internousdev.ec.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class UserCreateConfirmAction extends ActionSupport implements SessionAware{
	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String,Object> session;
	private String errorMessage1;
	private String errorMessage2;
	private String errorMessage3;

	public String execute(){


		String result = SUCCESS;

		if(!(loginUserId.equals("")) && !(loginPassword.equals("")) && !(userName.equals(""))){
			session.put("loginUserId",loginUserId);
			session.put("loginPassword",loginPassword);
			session.put("userName",userName);
		}
		if(loginUserId.isEmpty()){
				setErrorMessage1("IDが入力されていません。");
				result = ERROR;
		}if(loginPassword.isEmpty()){
				setErrorMessage2("パスワードが入力されていません。");
				result = ERROR;
		}if(userName.isEmpty()){
				setErrorMessage3("ユーザー名が入力されていません。");
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
	public String getErrorMessage1(){
		return errorMessage1;
	}
	public void setErrorMessage1(String errorMessage1){
		this.errorMessage1   = errorMessage1;
	}
	public String getErrorMessage2(){
		return errorMessage2;
	}
	public void setErrorMessage2(String errorMessage2){
		this.errorMessage2   = errorMessage2;
	}
	public String getErrorMessage3(){
		return errorMessage3;
	}
	public void setErrorMessage3(String errorMessage3){
		this.errorMessage3   = errorMessage3;
	}

}
