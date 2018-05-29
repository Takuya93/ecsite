package com.internousdev.ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ec.dto.BuyItemDTO;
import com.internousdev.ec.util.DBConnector;

public class BuyItemDAO {

	private List<BuyItemDTO> buyItemDTOList = new ArrayList<>();

	public List<BuyItemDTO> getBuyItemInfo(){
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		String sql="SELECT id, item_image, item_name, item_price,item_stock FROM item_info_transaction";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				BuyItemDTO buyItemDTO = new BuyItemDTO();
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemImage(resultSet.getString("item_image"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
				buyItemDTO.setItemStock(resultSet.getInt("item_stock"));

				buyItemDTOList.add(buyItemDTO);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return buyItemDTOList;
	}

	public BuyItemDTO getSelectBuyItemInfo(int id){
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		BuyItemDTO buyItemDTO = new BuyItemDTO();

		String sql = "SELECT id, item_image, item_name, item_price, item_stock FROM item_info_transaction WHERE id=?";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();


			if(resultSet.next()){
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemImage(resultSet.getString("item_image"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
				buyItemDTO.setItemStock(resultSet.getInt("item_stock"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return buyItemDTO;
	}

	public List<BuyItemDTO> getSelectBuyItemName(String searchName) {

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<BuyItemDTO> buyItemDTOList = new ArrayList<>();

		String sql = "SELECT * FROM item_info_transaction WHERE item_name LIKE ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, "%" + searchName + "%");
			ResultSet resultSet = preparedStatement.executeQuery();


			while(resultSet.next()) {
				BuyItemDTO buyItemDTO = new BuyItemDTO();
				buyItemDTO.setItemImage(resultSet.getString("item_image"));
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
				buyItemDTO.setItemStock(resultSet.getInt("item_stock"));

				buyItemDTOList.add(buyItemDTO);
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return buyItemDTOList;
	}



}
