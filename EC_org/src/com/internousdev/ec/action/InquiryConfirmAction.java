package com.internousdev.ec.action;

import java.util.Map;

import javax.websocket.Session;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class InquiryConfirmAction extends ActionSupport implements SessionAware{
	private String name;
	private String mail;
	private String qtype;
	private String body;
	private String master_id;
	public Map<String,Object> session;
	private String errorMessage;
	
	public String execute() {
		String result = ERROR;
		
		if(!(name.equals("")) & !(mail.equals("")) && !(body.equals(""))) {
			
			session.put("Name", name);
			session.put("Mail", name);
			session.put("Body", body);
			session.put("Qtype", qtype);
			
			result = SUCCESS;
			
		}else {
			setErrorMessage("未入力の項目があります。");
			result = ERROR;
		}return result;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getMaster_id() {
		return master_id;
	}
	public void setMaster_id(String master_id) {
		this.master_id = master_id;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	
}
