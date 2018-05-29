package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.InquiryCompleteDAO;
import com.internousdev.ec.dto.InquiryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class InquiryAllDeleteAction extends ActionSupport implements SessionAware{
	
	public Map<String,Object> session;
	public ArrayList<InquiryDTO> inquiryDTOList = new ArrayList<>();
	
	private String deleteFlg;
	private String message;
	
	@SuppressWarnings("unchecked")
	public String execute() throws SQLException{
		
		String result;
		
		InquiryCompleteDAO inquiryCompleteDAO = new InquiryCompleteDAO();
		List<InquiryDTO> inquiryDTOList = (List<InquiryDTO>) session.get("InquiryDTOList");
		
		if(deleteFlg == null) {
			if(inquiryDTOList != null) {
				for(int i=0; i<inquiryDTOList.size(); i++) {
					inquiryDTOList = inquiryCompleteDAO.select();
					session.put("inquiryDTOList",inquiryDTOList);
				}
			}
		
		}else{
			delete();
			inquiryDTOList = null;
		}

		result = SUCCESS;
		return result;
	}
	
	public void delete() throws SQLException{
		String master_id = session.get("master_id").toString();
		InquiryCompleteDAO dao = new InquiryCompleteDAO();
		
		int res = dao.inquiryAllDelete(master_id);
		
		if(res > 0) {
			setMessage("問合わせ履歴を削除しました。");
			inquiryDTOList = null;
			session.put("inquiryDTOList", inquiryDTOList);
		}else if(res == 0) {
			setMessage("問合わせ履歴の削除に失敗しました。");
		}
	}
	public ArrayList<InquiryDTO> getInquiryDTOList(){
		return inquiryDTOList;
	}
	public void setInquiryDTOList(ArrayList<InquiryDTO> inquiryDTOList) {
		this.inquiryDTOList = inquiryDTOList;
	}
	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}
