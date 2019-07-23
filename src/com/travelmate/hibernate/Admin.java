package com.travelmate.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Admin")


public class Admin 
{
	@Id @GeneratedValue
	
	 @Column(name = "Id")
     public int id;
	 
	 @Column(name = "AdminName")
     public String AdminName;
	 
	 @Column(name = "AdminEmail")
     public String AdminEmail;
	 
	 @Column(name = "AdminUserName")
     public String AdminUserName;
	 
	 @Column(name = "AdminPassword")
     public String AdminPassword;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAdminName() {
	return AdminName;
}
public void setAdminName(String adminName) {
	AdminName = adminName;
}
public String getAdminEmail() {
	return AdminEmail;
}
public void setAdminEmail(String adminEmail) {
	AdminEmail = adminEmail;
}
public String getAdminUserName() {
	return AdminUserName;
}
public void setAdminUserName(String adminUserName) {
	AdminUserName = adminUserName;
}
public String getAdminPassword() {
	return AdminPassword;
}
public void setAdminPassword(String adminPassword) {
	AdminPassword = adminPassword;
}
}

