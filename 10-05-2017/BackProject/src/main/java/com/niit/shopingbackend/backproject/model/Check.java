package com.niit.shopingbackend.backproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Check 
{

	@Id
    private String checkId;
	
	@Column(unique=true)
	private String checkname;
	private String checkdescription;
	public String getCheckId() {
		return checkId;
	}
	public void setCheckId(String checkId) {
		this.checkId = checkId;
	}
	public String getCheckname() {
		return checkname;
	}
	public void setCheckname(String checkname) {
		this.checkname = checkname;
	}
	public String getCheckdescription() {
		return checkdescription;
	}
	public void setCheckdescription(String checkdescription) {
		this.checkdescription = checkdescription;
	}
	
	
	
}
