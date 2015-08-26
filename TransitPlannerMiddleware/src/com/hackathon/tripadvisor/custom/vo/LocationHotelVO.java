package com.hackathon.tripadvisor.custom.vo;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.hackathon.tripadvisor.api.Ancestor;

public class LocationHotelVO {

	private String locationString;
    private String locationId;
    private String name;
    private String longitude;
    private String latitude;
    private String rating;
    
	public String getLocationString() {
		return locationString;
	}
	public void setLocationString(String locationString) {
		this.locationString = locationString;
	}
	public String getLocationId() {
		return locationId;
	}
	public void setLocationId(String locationId) {
		this.locationId = locationId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	
}
