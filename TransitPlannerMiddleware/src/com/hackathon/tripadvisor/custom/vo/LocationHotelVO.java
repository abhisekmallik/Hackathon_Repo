package com.hackathon.tripadvisor.custom.vo;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.hackathon.tripadvisor.api.AddressObj;
import com.hackathon.tripadvisor.api.Ancestor;

public class LocationHotelVO {

	private String locationString;
    private String locationId;
    private String localizedName;
    private AddressObj addressObj;
    private String seeAllPhotos;
    private String name;
    private String longitude;
    private String latitude;
    private String rating;
    private String ratingImageUrl;
    private Map<String, String> roomTypeRentMap;
    
    
    
	/**
	 * @return the roomTypeRentMap
	 */
	public Map<String, String> getRoomTypeRentMap() {
		if(roomTypeRentMap==null)
			roomTypeRentMap=new LinkedHashMap<>();
		return roomTypeRentMap;
	}
	
	/**
	 * @return the ratingImageUrl
	 */
	public String getRatingImageUrl() {
		return ratingImageUrl;
	}
	/**
	 * @param ratingImageUrl the ratingImageUrl to set
	 */
	public void setRatingImageUrl(String ratingImageUrl) {
		this.ratingImageUrl = ratingImageUrl;
	}
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
	/**
	 * @return the localizedName
	 */
	public String getLocalizedName() {
		return localizedName;
	}
	/**
	 * @param localizedName the localizedName to set
	 */
	public void setLocalizedName(String localizedName) {
		this.localizedName = localizedName;
	}
	/**
	 * @return the addressObj
	 */
	public AddressObj getAddressObj() {
		return addressObj;
	}
	/**
	 * @param addressObj the addressObj to set
	 */
	public void setAddressObj(AddressObj addressObj) {
		this.addressObj = addressObj;
	}
	/**
	 * @return the seeAllPhotos
	 */
	public String getSeeAllPhotos() {
		return seeAllPhotos;
	}
	/**
	 * @param seeAllPhotos the seeAllPhotos to set
	 */
	public void setSeeAllPhotos(String seeAllPhotos) {
		this.seeAllPhotos = seeAllPhotos;
	}
	
}
