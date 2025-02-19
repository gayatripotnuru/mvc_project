package com.MovieApp.MovieApp.Entity;



import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "theater_details")
public class Theater {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "theater_id")
	private int theaterid;
	@Column(name = "name")
	private String name;
	@Column(name = "address")
	private String address;
	@Column(name = "city")
	private String city;
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "updated_by")
	private Date updatedBy;
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(Date updatedBy) {
		this.updatedBy = updatedBy;
	}
	public int getTheaterid() {
		return theaterid;
	}
	public void setTheaterid(int theaterid) {
		this.theaterid = theaterid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}