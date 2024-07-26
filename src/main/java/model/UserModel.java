package model;

import java.io.Serializable;
import java.time.LocalDate;

public class UserModel implements Serializable {
	private static final long serialVersionUID=1L;
	private LocalDate dob;
	private String gender;
	private String email;
	private String phone;
	private String address;
	private String username;
	private String password;
	
	public UserModel(LocalDate dob, String gender, String email, String phone, String address, String username, String password) {
		this.dob=dob;
		this.gender=gender;
		this.email=email;
		this.phone=phone;
		this.address=address;
		this.username=username;
		this.password=password;
	}
	
	public UserModel() {}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getphone() {
		return phone;
	}

	public void setphone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}