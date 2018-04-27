package com.internousdev.ecsite.dto;

public class LoginDTO {
	private String loginId;
	private String loginPassword;
	private String userName;
	private Boolean LoginFlg;


	public String getLoginId(){
		return this.loginId;
	}
	public void setLoginId(String loginId){
		this.loginId = loginId;
	}
	public String getLoginPassword(){
		return this.loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword = loginPassword;
	}
	public String getUserName(){
		return this.userName;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public Boolean getLoginFlg(){
		return this.LoginFlg;
	}
	public void setLoginFlg(Boolean LoginFlg){
		this.LoginFlg = LoginFlg;
	}


}
