package cn.hzw.pojo;

import java.io.Serializable;

public class User_role implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer id;

	private String username;

	private String userpassword;

	private String email;

	private Integer islogin;

	private String phone;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword == null ? null : userpassword.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public Integer getIslogin() {
		return islogin;
	}

	public void setIslogin(Integer islogin) {
		this.islogin = islogin;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	
}