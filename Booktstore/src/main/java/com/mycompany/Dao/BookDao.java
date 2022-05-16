package com.mycompany.Dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mycompany.domain.Books;
import com.mycompany.jdbc.GetConnection;

public class BookDao {
	
	public List<Books> listOfBooks (){
		List<Books> list = null;
		try {
			list = new ArrayList<Books>();
			String sql = "select Book_id, Book_name, Author, Price from books";
			PreparedStatement ps = GetConnection.getConnection().prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Books books = new Books();
				books.setBookId(rs.getInt(1));
				books.setBooName(rs.getString(2));
				books.setBookAuthor(rs.getString(3));
				books.setPrice(rs.getFloat(4));
				
				list.add(books);
			}
			return list;
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

}
