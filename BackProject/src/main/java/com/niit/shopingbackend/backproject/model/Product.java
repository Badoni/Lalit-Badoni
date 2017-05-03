package com.niit.shopingbackend.backproject.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product 
{


private String pname;
@Id
private String pid;
private String cid;
private String pprice;
private String pdescription;
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getPid() {
	return pid;
}
public void setPid(String pid) {
	this.pid = pid;
}
public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
public String getPprice() {
	return pprice;
}
public void setPprice(String pprice) {
	this.pprice = pprice;
}
public String getPdescription() {
	return pdescription;
}
public void setPdescription(String pdescription) {
	this.pdescription = pdescription;
}



}
