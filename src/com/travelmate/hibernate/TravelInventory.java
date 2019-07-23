package com.travelmate.hibernate;

import java.sql.Blob;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TravelInventory")

public class TravelInventory 
{
	@Id @GeneratedValue
	
	 @Column(name = "Id")
		public int Id;
	
	 @Column(name = "TravelName")
		public String TravelName;
	 
	 @Column(name = "UserName")
		public String UserName;
	 
	 @Column(name = "ProductCategory")
		public String ProductCategory;
	 
	 @Column(name = "ProductPic")
		public byte[] ProductPic;
	 
	 @Column(name = "ProductName")
		public String ProductName;
	 
	 @Column(name = "ProductQuantity")
		public String ProductQuantity;
		
		public int getId() {
			return Id;
		}
		public void setId(int id) {
			Id = id;
		}
		public String getTravelName() {
			return TravelName;
		}
		public void setTravelName(String travelName) {
			TravelName = travelName;
		}
		public String getUserName() {
			return UserName;
		}
		public void setUserName(String userName) {
			UserName = userName;
		}
		public String getProductCategory() {
			return ProductCategory;
		}
		public void setProductCategory(String productCategory) {
			ProductCategory = productCategory;
		}
		public byte[] getProductPic() {
			return ProductPic;
		}
		public void setProductPic(byte[] productPic) {
			ProductPic = productPic;
		}
		public String getProductName() {
			return ProductName;
		}
		public void setProductName(String productName) {
			ProductName = productName;
		}
		public String getProductQuantity() {
			return ProductQuantity;
		}
		public void setProductQuantity(String productQuantity) {
			ProductQuantity = productQuantity;
		}
		
		
	}
	

