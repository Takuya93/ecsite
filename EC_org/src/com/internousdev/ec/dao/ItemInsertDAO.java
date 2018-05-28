package com.internousdev.ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ec.dto.ItemInsertDTO;
import com.internousdev.ec.util.DBConnector;

public class ItemInsertDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private ItemInsertDTO itemInsertDTO = new ItemInsertDTO();
	private String sql = "INSERT INTO item_info_transaction(item_name,item_price,item_stock,item_image) VALUES(?,?,?,?)";
	
	public ItemInsertDTO itemInsertInfo(String itemName,String itemPrice,String itemStock,String itemImage) throws SQLException{
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, itemName);
			preparedStatement.setString(2, itemPrice);
			preparedStatement.setString(3, itemStock);
			preparedStatement.setString(4, itemImage);
			preparedStatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connection.close();
		}
		
		return itemInsertDTO;
	}

}
