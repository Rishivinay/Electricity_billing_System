package com.ebs.spring.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table

public class CalBill {

	@Id
	@GeneratedValue
	@Column(name="id")
	private int uid;
	@Column(length = 10)
	private String accountNumber;
	@Column(length = 20)
	private String username;
	@Column(length = 8)
	private String units;
	@Column(length = 20)
	private double amount;

	public CalBill(int uid, String accountNumber, String username, String units, double amount) {
		super();
		this.uid = uid;
		this.accountNumber = accountNumber;
		this.username = username;
		this.units = units;
		this.amount = amount;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUnits() {
		return units;
	}

	public void setUnits(String units) {
		this.units = units;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "CalBill [uid=" + uid + ", accountNumber=" + accountNumber + ", username=" + username + ", units="
				+ units + ", amount=" + amount + "]";
	}

	

}

