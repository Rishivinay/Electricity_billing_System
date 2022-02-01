package com.ebs.spring.web.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table
public class ElectUser {
	@Id
	
	@Column
	@GeneratedValue
	private int id;
	@Column(length=30)
	private String firstName;
	@Column(length=30)
	private String userName;
	@Column(length=50)
	private String email;
	@Column(length=11)
	private String phoneNumber;
	@Column(length=30)
	private String password;
	@Temporal(value = TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dob;
	@Column(length=53)
	private String address1;
	@Column(length=30)
	private String address2;
	@Column(length=30)
	private String city;
	@Column(length=30)
	private String state;
	@Column(length=10)
	private String gender;
	
	
	public ElectUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ElectUser(int id, String firstName, String userName, String email, String phoneNumber, String password,Date dob, String address1, String address2, String city, String state, String gender) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.userName = userName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.dob = dob;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.gender = gender;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "ElectUser [id=" + id + ", firstName=" + firstName + ", userName=" + userName + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", password=" + password + ", dob=" + dob + ", address1=" + address1
				+ ", address2=" + address2 + ", city=" + city + ", state=" + state + ", gender=" + gender + "]";
	}
	
	
}
