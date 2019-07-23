package com.travelmate.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Memories")

public class Memories {
	
	@Id @GeneratedValue
	
	 @Column(name = "Id")
     int Id;
	
	 @Column(name = "UserName")
     public String UserName;

	 @Column(name = "TravelName")
	 public String TravelName;

	 @Column(name = "Tag")
	 public String Tag;

	 @Column(name = "Pic")
	 public byte[] Pic;

public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
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
public String getTag() {
	return Tag;
}
public void setTag(String tag) {
	Tag = tag;
}
public byte[] getPic() {
	return Pic;
}
public void setPic(byte[] pic) {
	Pic = pic;
}

}
