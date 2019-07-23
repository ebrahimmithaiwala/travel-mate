package com.travelmate.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SecurityQuestions")
public class SecurityQuestions{
	
	@Id @GeneratedValue
	
	 @Column(name = "Id")
     public int id;
	
	 @Column(name = "SecurityQuestions")
     public String SecurityQuestions;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSecurityQuestions() {
	return SecurityQuestions;
}
public void setSecurityQuestions(String securityQuestions) {
	SecurityQuestions = securityQuestions;
}



}
