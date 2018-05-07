package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {

	private List<BuyItemDTO> buyItemDTOList = new ArrayList<>();


	/**
	 * 商品情報取得メソッド
	 *
	 * @return BuyItemDTO
	 */
	public List<BuyItemDTO> getBuyItemInfo() {

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		String sql = "SELECT id, item_name, item_price FROM item_info_transaction";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			/**
			 * 商品を複数件取得
			 */
			while(resultSet.next()) {
				BuyItemDTO buyItemDTO = new BuyItemDTO();
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));

				buyItemDTOList.add(buyItemDTO);
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return buyItemDTOList;
	}

	/**
	 * 商品情報取得メソッド
	 *
	 * @return BuyItemDTO
	 */
	public BuyItemDTO getSelectBuyItemInfo(int id) {

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		BuyItemDTO buyItemDTO = new BuyItemDTO();

		String sql = "SELECT id, item_name, item_price FROM item_info_transaction WHERE id = ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();

			/**
			 * 商品を複数件取得
			 */
			if(resultSet.next()) {
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return buyItemDTO;
	}

	/**
	 * 商品情報取得メソッド
	 *
	 * @return BuyItemDTO
	 */
	public List<BuyItemDTO> getSelectBuyItemName(String searchName) {

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<BuyItemDTO> buyItemDTOList = new ArrayList<>();

		String sql = "SELECT * FROM item_info_transaction WHERE item_name LIKE ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, "%" + searchName + "%");
			ResultSet resultSet = preparedStatement.executeQuery();

			/**
			 * 商品を複数件取得
			 */
			while(resultSet.next()) {
				BuyItemDTO buyItemDTO = new BuyItemDTO();
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));

				buyItemDTOList.add(buyItemDTO);
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return buyItemDTOList;
	}
}