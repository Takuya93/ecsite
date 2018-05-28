package com.internousdev.ec.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ec.dao.LoginDAO;
import com.internousdev.ec.dto.LoginDTO;
import com.internousdev.ec.dto.BuyItemDTO;
import com.internousdev.ec.dao.BuyItemDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	private String loginUserId;
	private String loginPassword;
	public Map<String,Object> session;
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private BuyItemDTO buyItemDTO = new BuyItemDTO();
	private String errorMessage1;
	private String errorMessage2;
	private List<BuyItemDTO> buyItemDTOList;
	
	
	public String execute(){
		String result = ERROR;

		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);

		session.put("loginUser",loginDTO);
		buyItemDTOList = buyItemDAO.getBuyItemInfo();
		
		if(((LoginDTO) session.get("loginUser")).getLoginMaster()){
			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			session.put("buyItemDTOList",buyItemDTOList);
			session.put("masterId",loginUserId);
			result = "master";
			return result;
		}

		if(((LoginDTO) session.get("loginUser")).getLoginFlg()){
			result = SUCCESS;
			session.put("login_user_id",loginDTO.getLoginId());
			return result;
		}
		if(loginUserId.isEmpty()){
			setErrorMessage1("IDが未記入です");
			result = ERROR;
		}if(loginPassword.isEmpty()){
			setErrorMessage2("パスワードが未記入です");
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
	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
	public String getErrorMessage1(){
		return errorMessage1;
	}
	public void setErrorMessage1(String errorMessage1){
		this.errorMessage1 = errorMessage1;
	}
	public String getErrorMessage2(){
		return errorMessage2;
	}
	public void setErrorMessage2(String errorMessage2){
		this.errorMessage2 = errorMessage2;
	}

}
