package com.internousdev.ec.dto;

public class InquiryDTO {
	private String name;
	private String mail;
	private String qtype;
	private String body;
	private String master_id;

	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getQtype(){
		return qtype;
	}
	public void setQtype(String qtype){
		this.qtype = qtype;
	}
	public String getBody(){
		return body;
	}
	public void setBody(String body){
		this.body = body;
	}
	public String getMaster_id() {
		return master_id;
	}
	public void setMaster_id(String master_id) {
		this.master_id = master_id;
	}

}
