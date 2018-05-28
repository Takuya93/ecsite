package com.internousdev.ec.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class CartCompAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	private int count;
	private int pay;
	int totalPriceAll = 0;

	public String execute() throws SQLException{
		String result=SUCCESS;

	



		if(pay == 1){
			session.put("pay","クレジットカード");

		}else{
			session.put("pay","現金払い");
		}



		return result;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

	public int getCount(){
		return count;
	}

	public void setCount(int count){
		this.count = count;
	}

}
