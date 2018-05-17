package com.internousdev.ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ec.dto.CartDTO;
import com.internousdev.ec.util.DBConnector;
import com.internousdev.ec.util.DateUtil;

public class CartDAO {
	private DateUtil dateUtil = new DateUtil();

	public void createCart(String user_id, int item_id,int total_price, int buy_count, String pay) throws SQLException{
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		String sql="INSERT INTO cart(user_id, item_id, total_price, buy_count, pay, insert_date) VALUES(?,?,?,?,?,?)";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user_id);
			preparedStatement.setInt(2, item_id);
			preparedStatement.setInt(3, total_price);
			preparedStatement.setInt(4, buy_count);
			preparedStatement.setString(5, pay);
			preparedStatement.setString(6, dateUtil.getDate());

			preparedStatement.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}


		public List<CartDTO> getCartInfo(String user_id) throws SQLException{
			DBConnector dbConnector = new DBConnector();
			Connection connection = dbConnector.getConnection();
			List<CartDTO> cartDTOList = new ArrayList<>();

			String sql = "SELECT * FROM cart JOIN item_info_transaction on item_info_transaction.id = cart.item_id WHERE cart.user_id = ?";

			try{
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, user_id);

				ResultSet resultSet = preparedStatement.executeQuery();

				while(resultSet.next()){
					CartDTO cartDTO = new CartDTO();
					cartDTO.setId(resultSet.getInt("id"));
					cartDTO.setItemId(resultSet.getInt("item_id"));
					cartDTO.setItemName(resultSet.getString("item_name"));
					cartDTO.setTotalPrice(resultSet.getInt("total_price"));
					cartDTO.setUserId(resultSet.getString("user_id"));
					cartDTO.setBuyCount(resultSet.getInt("buy_count"));
					cartDTO.setPay(resultSet.getString("pay"));

					cartDTOList.add(cartDTO);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				connection.close();
			}
			return cartDTOList;
		}



		public List<CartDTO> deleteCartInfo(String user_id) throws SQLException{
			DBConnector dbConnector = new DBConnector();
			Connection connection = dbConnector.getConnection();
			List<CartDTO> cartDTOList = new ArrayList<>();
			String sql = "DELETE FROM cart WHERE user_id = ?";

			try{
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, user_id);
				preparedStatement.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				connection.close();
			}
			return cartDTOList;
		}
}


