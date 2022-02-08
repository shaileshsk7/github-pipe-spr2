package com.sprint2.sprint2sk;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity 
@Table(name = "signup")
public class Admin {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer sid;
private String sname;

private String semail;

private Integer spass;

public Integer getSid() {
	return sid;
}


public void setSid(Integer sid) {
	this.sid = sid;
}


public String getSname() {
	return sname;
}


public void setSname(String sname) {
	this.sname = sname;
}


public String getSemail() {
	return semail;
}


public void setSemail(String semail) {
	this.semail = semail;
}


public Integer getSpass() {
	return spass;
}


public void setSpass(Integer spass) {
	this.spass = spass;
}






}

