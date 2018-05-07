package com.internousdev.ecsite.action;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ReHomeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	public String execute(){
		String result = "login";


		return result;
	}

}