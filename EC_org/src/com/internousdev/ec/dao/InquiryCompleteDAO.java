package com.internousdev.ec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ec.dto.InquiryDTO;
import com.internousdev.ec.util.DBConnector;

public class InquiryCompleteDAO {
	List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();

	public List<InquiryDTO> select(){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "select * from inquiry";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				InquiryDTO dto = new InquiryDTO();
				dto.setName(rs.getString("name"));
				dto.setMail(rs.getString("mail"));
				dto.setQtype(rs.getString("qtype"));
				dto.setBody(rs.getString("body"));
				dto.setMaster_id(rs.getString("master_id"));
				inquiryDTOList.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return inquiryDTOList;
	}
	public int insert(String name,String mail,String qtype,String body,String master_id){
		int ret = 0;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "insert into inquiry values(?,?,?,?,?)";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, mail);
			ps.setString(3, qtype);
			ps.setString(4, body);
			ps.setString(5, master_id);
			
			int i = ps.executeUpdate();
			
			if(i > 0){
				System.out.println(i+"件登録されました");
				ret = i;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return ret;
	}
	
	public List<InquiryDTO> inquiryAllDelete(String name) throws SQLException{

		String sql = "DELETE FROM inquiry WHERE name = ?";
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<InquiryDTO> inquiryList = new ArrayList<>();



		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,name);

			preparedStatement.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();

		}finally{
			connection.close();
		}

		return inquiryList;

		}

}
