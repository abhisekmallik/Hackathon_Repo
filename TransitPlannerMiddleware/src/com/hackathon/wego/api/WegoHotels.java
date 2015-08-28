
package com.hackathon.wego.api;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class WegoHotels {

    @Expose
    private String location;
    @SerializedName("location_coordinates")
    @Expose
    private List<Double> locationCoordinates = new ArrayList<Double>();
    @SerializedName("total_count")
    @Expose
    private Integer totalCount;
    @Expose
    private Integer count;
    @SerializedName("filtered_count")
    @Expose
    private Integer filteredCount;
    @SerializedName("current_page")
    @Expose
    private Integer currentPage;
    @SerializedName("per_page")
    @Expose
    private Integer perPage;
    @Expose
    private Rates rates;
    @Expose
    private List<District> districts = new ArrayList<District>();
    @SerializedName("is_done")
    @Expose
    private Boolean isDone;
    @Expose
    private List<Hotel> hotels = new ArrayList<Hotel>();

    /**
     * 
     * @return
     *     The location
     */
    public String getLocation() {
        return location;
    }

    /**
     * 
     * @param location
     *     The location
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * 
     * @return
     *     The locationCoordinates
     */
    public List<Double> getLocationCoordinates() {
        return locationCoordinates;
    }

    /**
     * 
     * @param locationCoordinates
     *     The location_coordinates
     */
    public void setLocationCoordinates(List<Double> locationCoordinates) {
        this.locationCoordinates = locationCoordinates;
    }

    /**
     * 
     * @return
     *     The totalCount
     */
    public Integer getTotalCount() {
        return totalCount;
    }

    /**
     * 
     * @param totalCount
     *     The total_count
     */
    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    /**
     * 
     * @return
     *     The count
     */
    public Integer getCount() {
        return count;
    }

    /**
     * 
     * @param count
     *     The count
     */
    public void setCount(Integer count) {
        this.count = count;
    }

    /**
     * 
     * @return
     *     The filteredCount
     */
    public Integer getFilteredCount() {
        return filteredCount;
    }

    /**
     * 
     * @param filteredCount
     *     The filtered_count
     */
    public void setFilteredCount(Integer filteredCount) {
        this.filteredCount = filteredCount;
    }

    /**
     * 
     * @return
     *     The currentPage
     */
    public Integer getCurrentPage() {
        return currentPage;
    }

    /**
     * 
     * @param currentPage
     *     The current_page
     */
    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    /**
     * 
     * @return
     *     The perPage
     */
    public Integer getPerPage() {
        return perPage;
    }

    /**
     * 
     * @param perPage
     *     The per_page
     */
    public void setPerPage(Integer perPage) {
        this.perPage = perPage;
    }

    /**
     * 
     * @return
     *     The rates
     */
    public Rates getRates() {
        return rates;
    }

    /**
     * 
     * @param rates
     *     The rates
     */
    public void setRates(Rates rates) {
        this.rates = rates;
    }

    /**
     * 
     * @return
     *     The districts
     */
    public List<District> getDistricts() {
        return districts;
    }

    /**
     * 
     * @param districts
     *     The districts
     */
    public void setDistricts(List<District> districts) {
        this.districts = districts;
    }

    /**
     * 
     * @return
     *     The isDone
     */
    public Boolean getIsDone() {
        return isDone;
    }

    /**
     * 
     * @param isDone
     *     The is_done
     */
    public void setIsDone(Boolean isDone) {
        this.isDone = isDone;
    }

    /**
     * 
     * @return
     *     The hotels
     */
    public List<Hotel> getHotels() {
        return hotels;
    }

    /**
     * 
     * @param hotels
     *     The hotels
     */
    public void setHotels(List<Hotel> hotels) {
        this.hotels = hotels;
    }

}
