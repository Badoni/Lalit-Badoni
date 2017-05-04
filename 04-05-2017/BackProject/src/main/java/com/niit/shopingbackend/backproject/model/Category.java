package com.niit.shopingbackend.backproject.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category 

{

	private String cid;
	@Id
	private String cname;
	private String cdescription;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdescription() {
		return cdescription;
	}
	public void setCdescription(String cdescription) {
		this.cdescription = cdescription;
	}
	
	
}
