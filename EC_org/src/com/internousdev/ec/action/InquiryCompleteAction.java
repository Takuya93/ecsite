package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.InquiryCompleteDAO;
import com.internousdev.ec.dto.InquiryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class InquiryCompleteAction extends ActionSupport implements SessionAware{
	private String name;
	private String mail;
	private String qtype;
	private String body;
	private String master_id;

	List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();
	private Map<String,Object> session;

	public String execute() throws SQLException{
		String ret = ERROR;
		InquiryCompleteDAO inquiryCompleteDAO = new InquiryCompleteDAO();
		int count = inquiryCompleteDAO.insert(
				session.get("Name").toString(),
				session.get("Mail").toString(),
				session.get("Qtype").toString(),
				session.get("Body").toString(),
				master_id);

				session.put("master_id", master_id);

				if(count > 0){
					inquiryDTOList = inquiryCompleteDAO.select();
					session.put("inquiryDTOList", inquiryDTOList);
					session.put("master_id", master_id);

					ret = SUCCESS;
				}
		return ret;
	}
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
	
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}


}
