package com.mycompany.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mycompany.domain.User;
import com.mycompany.jdbc.GetConnection;

public class UserDao {
	
	public boolean insertUserDetail(User user) {
		try {
			String sql = "insert into userdetail (fullname,address,email,username,password)values(?,?,?,?,?)";
			PreparedStatement ps = GetConnection.getConnection().prepareStatement(sql);
			
			ps.setString(1,user.getFullName());
			ps.setString(2,user.getAddress());
			ps.setString(3,user.getEmail());
			ps.setString(4,user.getUserName());
			ps.setString(5,user.getUserPass());
			
			return ps.executeUpdate()>0;
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return false;
	}
	
	public User getUser(String username) {
		
		String sql = "select  username, password,fullname from userdetail where username =? ";
		try {
			PreparedStatement ps = GetConnection.getConnection().prepareStatement(sql);
		
			ps.setString(1,username);
		
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				User user = new User();
				user.setUserName(rs.getString(1));
				user.setUserPass(rs.getString(2));
				user.setFullName(rs.getString(3));
				
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean updatePassword(String Username, String UserNewPassword) {
		String sql = "update userdetail set password=? where username= ?";
		try {
			PreparedStatement ps = GetConnection.getConnection().prepareStatement(sql);
			
			ps.setString(1, UserNewPassword);
			ps.setString(2, Username);
			
			return ps.executeUpdate() > 0;
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return false;
		
	}
}
