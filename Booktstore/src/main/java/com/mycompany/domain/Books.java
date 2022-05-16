package com.mycompany.domain;

public class Books {

	private int bookId;
	

	private String booName;
	private String bookAuthor;
	private float price;
	
	public Books() {
		
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int boodId) {
		this.bookId = boodId;
	}
	public String getBooName() {
		return booName;
	}

	public void setBooName(String booName) {
		this.booName = booName;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
}
