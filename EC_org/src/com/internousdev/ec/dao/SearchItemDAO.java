package com.internousdev.ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ec.dto.BuyItemDTO;
import com.internousdev.ec.util.DBConnector;

public class SearchItemDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	//情報格納のためのリスト
	private List<BuyItemDTO> searchList = new ArrayList<BuyItemDTO>();

	/**
	 * 検索メソッド。検索欄に入力された検索ワードを引数にとる
	 */

	public List<BuyItemDTO> getItemInfo(String searchWord){

		String sql = "SELECT * FROM item_info_transaction";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				String itemName = resultSet.getString("item_name");
				String itemPrice = resultSet.getString("item_price");
				String itemCategory = resultSet.getString("item_category");

		
				if(itemName.matches(".*"+ searchWord + ".*") || itemPrice.matches(".*" + searchWord + ".*") || itemCategory.matches(".*" + searchWord + ".*")){

					BuyItemDTO dto = new BuyItemDTO();

					dto.setId(resultSet.getInt("id"));
					dto.setItemName(itemName);
					dto.setItemPrice(resultSet.getString("item_price"));
					dto.setItemImage(resultSet.getString("item_image"));

					searchList.add(dto);

				}
			}
		}catch(Exception e){
			e.printStackTrace();

		}return searchList;
	}


	public List<BuyItemDTO> getBuyItemDTO(){
		return searchList;
	}

}
