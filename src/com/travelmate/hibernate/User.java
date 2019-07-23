package com.travelmate.hibernate;

import java.sql.*; 
import java.util.*;
import javax.persistence.*;

@Entity
@Table(name = "User")


public class User 
{
	@Id @GeneratedValue
	 @Column(name = "Id")
	 int Id;
	 
	@Column(name = "FirstName")
    public String FirstName;

	 @Column(name = "LastName")	
     public String LastName;

	 @Column(name = "UserEmail")
	 public String UserEmail;
	 
	 @Column(name = "ContactNumber")
     public String ContactNumber;
	 
	 @Column(name = "UserName")
     public String UserName;

	 @Column(name = "UserPassword")
	 public String UserPassword;
	 
	 @Column(name = "SecurityQuestion")
     public String SecurityQuestion;
	 
	 @Column(name = "SecurityAnswer")
     public String SecurityAnswer;
	 
	 @Column(name = "UserGender")
     public String UserGender;
	 
	 @Column(name = "UserProfilePic")
     public byte[] UserProfilePic;

public int getId() {
	return Id;
}
public void setId(int Id) {
	this.Id = Id;
}

public String getFirstName() {
	return FirstName;
}
public void setFirstName(String firstName) {
	FirstName = firstName;
}
public String getLastName() {
	return LastName;
}
public void setLastName(String lastName) {
	LastName = lastName;
}
public String getUserEmail() {
	return UserEmail;
}
public void setUserEmail(String userEmail) {
	UserEmail = userEmail;
}
public String getContactNumber() {
	return ContactNumber;
}
public void setContactNumber(String contactNumber) {
	ContactNumber = contactNumber;
}
public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public String getUserPassword() {
	return UserPassword;
}
public void setUserPassword(String userPassword) {
	UserPassword = userPassword;
}
public String getSecurityQuestion() {
	return SecurityQuestion;
}
public void setSecurityQuestion(String securityQuestion) {
	SecurityQuestion = securityQuestion;
}
public String getSecurityAnswer() {
	return SecurityAnswer;
}
public void setSecurityAnswer(String securityAnswer) {
	SecurityAnswer = securityAnswer;
}
public String getUserGender() {
	return UserGender;
}
public void setUserGender(String userGender) {
	UserGender = userGender;
}
public byte[] getUserProfilePic() {
	return UserProfilePic;
}
public void setUserProfilePic(byte[] userProfilePic) {
	UserProfilePic = userProfilePic;
}





}
