
package com.hackathon.wego.api;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Hotel {

    @Expose
    private Integer id;
    @Expose
    private String name;
    @Expose
    private String address;
    @Expose
    private List<Integer> districts = new ArrayList<Integer>();
    @Expose
    private Double latitude;
    @Expose
    private Double longitude;
    @SerializedName("property_type")
    @Expose
    private Integer propertyType;
    @SerializedName("brand_id")
    @Expose
    private Object brandId;
    @Expose
    private Object searched;
    @Expose
    private String desc;
    @Expose
    private Integer stars;
    @Expose
    private Boolean map;
    @SerializedName("room_rates")
    @Expose
    private List<RoomRate> roomRates = new ArrayList<RoomRate>();
    @SerializedName("summary_room_rates")
    @Expose
    private List<SummaryRoomRate> summaryRoomRates = new ArrayList<SummaryRoomRate>();
    @SerializedName("room_rates_count")
    @Expose
    private Integer roomRatesCount;
    @SerializedName("room_rate_min")
    @Expose
    private RoomRateMin roomRateMin;
    @SerializedName("total_reviews")
    @Expose
    private Integer totalReviews;
    @Expose
    private Integer positive;
    @Expose
    private Integer negative;
    @Expose
    private Integer neutral;
    @SerializedName("rooms_count")
    @Expose
    private Integer roomsCount;
    @Expose
    private Integer rank;
    @Expose
    private Integer satisfaction;
    @SerializedName("satisfaction_description")
    @Expose
    private String satisfactionDescription;
    @Expose
    private String url;
    @Expose
    private Object offer;
    @Expose
    private String image;

    /**
     * 
     * @return
     *     The id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 
     * @param id
     *     The id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 
     * @return
     *     The name
     */
    public String getName() {
        return name;
    }

    /**
     * 
     * @param name
     *     The name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 
     * @return
     *     The address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 
     * @param address
     *     The address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 
     * @return
     *     The districts
     */
    public List<Integer> getDistricts() {
        return districts;
    }

    /**
     * 
     * @param districts
     *     The districts
     */
    public void setDistricts(List<Integer> districts) {
        this.districts = districts;
    }

    /**
     * 
     * @return
     *     The latitude
     */
    public Double getLatitude() {
        return latitude;
    }

    /**
     * 
     * @param latitude
     *     The latitude
     */
    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    /**
     * 
     * @return
     *     The longitude
     */
    public Double getLongitude() {
        return longitude;
    }

    /**
     * 
     * @param longitude
     *     The longitude
     */
    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    /**
     * 
     * @return
     *     The propertyType
     */
    public Integer getPropertyType() {
        return propertyType;
    }

    /**
     * 
     * @param propertyType
     *     The property_type
     */
    public void setPropertyType(Integer propertyType) {
        this.propertyType = propertyType;
    }

    /**
     * 
     * @return
     *     The brandId
     */
    public Object getBrandId() {
        return brandId;
    }

    /**
     * 
     * @param brandId
     *     The brand_id
     */
    public void setBrandId(Object brandId) {
        this.brandId = brandId;
    }

    /**
     * 
     * @return
     *     The searched
     */
    public Object getSearched() {
        return searched;
    }

    /**
     * 
     * @param searched
     *     The searched
     */
    public void setSearched(Object searched) {
        this.searched = searched;
    }

    /**
     * 
     * @return
     *     The desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * 
     * @param desc
     *     The desc
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * 
     * @return
     *     The stars
     */
    public Integer getStars() {
        return stars;
    }

    /**
     * 
     * @param stars
     *     The stars
     */
    public void setStars(Integer stars) {
        this.stars = stars;
    }

    /**
     * 
     * @return
     *     The map
     */
    public Boolean getMap() {
        return map;
    }

    /**
     * 
     * @param map
     *     The map
     */
    public void setMap(Boolean map) {
        this.map = map;
    }

    /**
     * 
     * @return
     *     The roomRates
     */
    public List<RoomRate> getRoomRates() {
        return roomRates;
    }

    /**
     * 
     * @param roomRates
     *     The room_rates
     */
    public void setRoomRates(List<RoomRate> roomRates) {
        this.roomRates = roomRates;
    }

    /**
     * 
     * @return
     *     The summaryRoomRates
     */
    public List<SummaryRoomRate> getSummaryRoomRates() {
        return summaryRoomRates;
    }

    /**
     * 
     * @param summaryRoomRates
     *     The summary_room_rates
     */
    public void setSummaryRoomRates(List<SummaryRoomRate> summaryRoomRates) {
        this.summaryRoomRates = summaryRoomRates;
    }

    /**
     * 
     * @return
     *     The roomRatesCount
     */
    public Integer getRoomRatesCount() {
        return roomRatesCount;
    }

    /**
     * 
     * @param roomRatesCount
     *     The room_rates_count
     */
    public void setRoomRatesCount(Integer roomRatesCount) {
        this.roomRatesCount = roomRatesCount;
    }

    /**
     * 
     * @return
     *     The roomRateMin
     */
    public RoomRateMin getRoomRateMin() {
        return roomRateMin;
    }

    /**
     * 
     * @param roomRateMin
     *     The room_rate_min
     */
    public void setRoomRateMin(RoomRateMin roomRateMin) {
        this.roomRateMin = roomRateMin;
    }

    /**
     * 
     * @return
     *     The totalReviews
     */
    public Integer getTotalReviews() {
        return totalReviews;
    }

    /**
     * 
     * @param totalReviews
     *     The total_reviews
     */
    public void setTotalReviews(Integer totalReviews) {
        this.totalReviews = totalReviews;
    }

    /**
     * 
     * @return
     *     The positive
     */
    public Integer getPositive() {
        return positive;
    }

    /**
     * 
     * @param positive
     *     The positive
     */
    public void setPositive(Integer positive) {
        this.positive = positive;
    }

    /**
     * 
     * @return
     *     The negative
     */
    public Integer getNegative() {
        return negative;
    }

    /**
     * 
     * @param negative
     *     The negative
     */
    public void setNegative(Integer negative) {
        this.negative = negative;
    }

    /**
     * 
     * @return
     *     The neutral
     */
    public Integer getNeutral() {
        return neutral;
    }

    /**
     * 
     * @param neutral
     *     The neutral
     */
    public void setNeutral(Integer neutral) {
        this.neutral = neutral;
    }

    /**
     * 
     * @return
     *     The roomsCount
     */
    public Integer getRoomsCount() {
        return roomsCount;
    }

    /**
     * 
     * @param roomsCount
     *     The rooms_count
     */
    public void setRoomsCount(Integer roomsCount) {
        this.roomsCount = roomsCount;
    }

    /**
     * 
     * @return
     *     The rank
     */
    public Integer getRank() {
        return rank;
    }

    /**
     * 
     * @param rank
     *     The rank
     */
    public void setRank(Integer rank) {
        this.rank = rank;
    }

    /**
     * 
     * @return
     *     The satisfaction
     */
    public Integer getSatisfaction() {
        return satisfaction;
    }

    /**
     * 
     * @param satisfaction
     *     The satisfaction
     */
    public void setSatisfaction(Integer satisfaction) {
        this.satisfaction = satisfaction;
    }

    /**
     * 
     * @return
     *     The satisfactionDescription
     */
    public String getSatisfactionDescription() {
        return satisfactionDescription;
    }

    /**
     * 
     * @param satisfactionDescription
     *     The satisfaction_description
     */
    public void setSatisfactionDescription(String satisfactionDescription) {
        this.satisfactionDescription = satisfactionDescription;
    }

    /**
     * 
     * @return
     *     The url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 
     * @param url
     *     The url
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 
     * @return
     *     The offer
     */
    public Object getOffer() {
        return offer;
    }

    /**
     * 
     * @param offer
     *     The offer
     */
    public void setOffer(Object offer) {
        this.offer = offer;
    }

    /**
     * 
     * @return
     *     The image
     */
    public String getImage() {
        return image;
    }

    /**
     * 
     * @param image
     *     The image
     */
    public void setImage(String image) {
        this.image = image;
    }

}
