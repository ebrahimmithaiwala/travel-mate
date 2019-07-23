package com.travelmate.hibernate;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "TravelHistory")

public class TravelHistory 
{
	@Id @GeneratedValue
	
	 @Column(name = "Id")
	public int Id;
	
	 @Column(name = "UserName")
	public String UserName;
	 
	 @Column(name = "TravelName")
	public String TravelName;
	 
	 @Column(name = "TravelLocation")
	public String TravelLocation;
	 
	 @Column(name = "TravelStartDate")
	public String TravelStartDate;
	 
	 @Column(name = "TravelEndDate")
	public String TravelEndDate;
	 
	 @Column(name = "ModeOfTransportation")
	public String ModeOfTransportation;
	 
	 @Column(name = "TravelDetails")
	public String TravelDetails;
	 
	 @Column(name = "TravellingWith")
	public String TravellingWith;
	
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getTravelName() {
		return TravelName;
	}
	public void setTravelName(String travelName) {
		TravelName = travelName;
	}
	public String getTravelLocation() {
		return TravelLocation;
	}
	public void setTravelLocation(String travelLocation) {
		TravelLocation = travelLocation;
	}
	public String getTravelStartDate() {
		return TravelStartDate;
	}
	public void setTravelStartDate(String travelStartDate) {
		TravelStartDate = travelStartDate;
	}
	public String getTravelEndDate() {
		return TravelEndDate;
	}
	public void setTravelEndDate(String travelEndDate) {
		TravelEndDate = travelEndDate;
	}
	public String getModeOfTransportation() {
		return ModeOfTransportation;
	}
	public void setModeOfTransportation(String modeOfTransportation) {
		ModeOfTransportation = modeOfTransportation;
	}
	public String getTravelDetails() {
		return TravelDetails;
	}
	public void setTravelDetails(String travelDetails) {
		TravelDetails = travelDetails;
	}
	public String getTravellingWith() {
		return TravellingWith;
	}
	public void setTravellingWith(String travellingWith) {
		TravellingWith = travellingWith;
	}
}
