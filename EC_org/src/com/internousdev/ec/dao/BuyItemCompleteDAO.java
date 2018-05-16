package com.internousdev.ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ec.util.DBConnector;
import com.internousdev.ec.util.DateUtil;

public class BuyItemCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql="INSERT INTO user_buy_item_transaction (item_transaction_id,total_price,total_count,user_master_id,pay,insert_date) VALUES(?,?,?,?,?,?)";


	public void buyItemInfo(String user_id, int item_transaction_id, int total_price, int buy_count, String pay) throws SQLException{

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, item_transaction_id);
			preparedStatement.setInt(2, total_price);
			preparedStatement.setInt(3, buy_count);
			preparedStatement.setString(4, user_id);
			preparedStatement.setString(5, pay);
			preparedStatement.setString(6, dateUtil.getDate());

			preparedStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}
}
