package com.rt.userentity;

public class Customer {

	private String name;
	private String phonenumber;
	private int totalmember;
	
	public Customer() {
		
	}
	public Customer(String name, String phonenumber, int totalmember) {
		this.name = name;
		this.phonenumber = phonenumber;
		this.totalmember = totalmember;
	}
  
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public int getTotalmember() {
		return totalmember;
	}
	public void setTotalmember(int totalmember) {
		this.totalmember = totalmember;
	}
	
}
