package com.entitesC;

public class UserCon {
	private int id;
	private String name;
	private String email;
	private String info;
	public UserCon() {
		super();

}
	public UserCon(int id, String name, String email, String info) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.info = info;
	}
	public UserCon(String name, String email, String info) {
		super();
		this.name = name;
		this.email = email;
		this.info = info;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}

	
}