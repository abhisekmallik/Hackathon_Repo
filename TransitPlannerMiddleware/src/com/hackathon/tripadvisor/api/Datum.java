
package com.hackathon.tripadvisor.api;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Datum {

    @SerializedName("see_all_photos")
    @Expose
    private String seeAllPhotos;
    @SerializedName("web_url")
    @Expose
    private String webUrl;
    @SerializedName("percent_recommended")
    @Expose
    private Object percentRecommended;
    @SerializedName("location_string")
    @Expose
    private String locationString;
    @SerializedName("location_id")
    @Expose
    private String locationId;
    @SerializedName("write_review")
    @Expose
    private String writeReview;
    @SerializedName("price_level")
    @Expose
    private String priceLevel;
    @SerializedName("api_detail_url")
    @Expose
    private String apiDetailUrl;
    @SerializedName("address_obj")
    @Expose
    private AddressObj addressObj;
    @Expose
    private Category category;
    @Expose
    private List<Award> awards = new ArrayList<Award>();
    @SerializedName("num_reviews")
    @Expose
    private String numReviews;
    @Expose
    private List<Subcategory> subcategory = new ArrayList<Subcategory>();
    @SerializedName("rating_image_url")
    @Expose
    private String ratingImageUrl;
    @Expose
    private String name;
    @Expose
    private List<Ancestor> ancestors = new ArrayList<Ancestor>();
    @Expose
    private String longitude;
    @Expose
    private String latitude;
    @Expose
    private String rating;
    @SerializedName("ranking_data")
    @Expose
    private RankingData rankingData;

    /**
     * 
     * @return
     *     The seeAllPhotos
     */
    public String getSeeAllPhotos() {
        return seeAllPhotos;
    }

    /**
     * 
     * @param seeAllPhotos
     *     The see_all_photos
     */
    public void setSeeAllPhotos(String seeAllPhotos) {
        this.seeAllPhotos = seeAllPhotos;
    }

    /**
     * 
     * @return
     *     The webUrl
     */
    public String getWebUrl() {
        return webUrl;
    }

    /**
     * 
     * @param webUrl
     *     The web_url
     */
    public void setWebUrl(String webUrl) {
        this.webUrl = webUrl;
    }

    /**
     * 
     * @return
     *     The percentRecommended
     */
    public Object getPercentRecommended() {
        return percentRecommended;
    }

    /**
     * 
     * @param percentRecommended
     *     The percent_recommended
     */
    public void setPercentRecommended(Object percentRecommended) {
        this.percentRecommended = percentRecommended;
    }

    /**
     * 
     * @return
     *     The locationString
     */
    public String getLocationString() {
        return locationString;
    }

    /**
     * 
     * @param locationString
     *     The location_string
     */
    public void setLocationString(String locationString) {
        this.locationString = locationString;
    }

    /**
     * 
     * @return
     *     The locationId
     */
    public String getLocationId() {
        return locationId;
    }

    /**
     * 
     * @param locationId
     *     The location_id
     */
    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    /**
     * 
     * @return
     *     The writeReview
     */
    public String getWriteReview() {
        return writeReview;
    }

    /**
     * 
     * @param writeReview
     *     The write_review
     */
    public void setWriteReview(String writeReview) {
        this.writeReview = writeReview;
    }

    /**
     * 
     * @return
     *     The priceLevel
     */
    public String getPriceLevel() {
        return priceLevel;
    }

    /**
     * 
     * @param priceLevel
     *     The price_level
     */
    public void setPriceLevel(String priceLevel) {
        this.priceLevel = priceLevel;
    }

    /**
     * 
     * @return
     *     The apiDetailUrl
     */
    public String getApiDetailUrl() {
        return apiDetailUrl;
    }

    /**
     * 
     * @param apiDetailUrl
     *     The api_detail_url
     */
    public void setApiDetailUrl(String apiDetailUrl) {
        this.apiDetailUrl = apiDetailUrl;
    }

    /**
     * 
     * @return
     *     The addressObj
     */
    public AddressObj getAddressObj() {
        return addressObj;
    }

    /**
     * 
     * @param addressObj
     *     The address_obj
     */
    public void setAddressObj(AddressObj addressObj) {
        this.addressObj = addressObj;
    }

    /**
     * 
     * @return
     *     The category
     */
    public Category getCategory() {
        return category;
    }

    /**
     * 
     * @param category
     *     The category
     */
    public void setCategory(Category category) {
        this.category = category;
    }

    /**
     * 
     * @return
     *     The awards
     */
    public List<Award> getAwards() {
        return awards;
    }

    /**
     * 
     * @param awards
     *     The awards
     */
    public void setAwards(List<Award> awards) {
        this.awards = awards;
    }

    /**
     * 
     * @return
     *     The numReviews
     */
    public String getNumReviews() {
        return numReviews;
    }

    /**
     * 
     * @param numReviews
     *     The num_reviews
     */
    public void setNumReviews(String numReviews) {
        this.numReviews = numReviews;
    }

    /**
     * 
     * @return
     *     The subcategory
     */
    public List<Subcategory> getSubcategory() {
        return subcategory;
    }

    /**
     * 
     * @param subcategory
     *     The subcategory
     */
    public void setSubcategory(List<Subcategory> subcategory) {
        this.subcategory = subcategory;
    }

    /**
     * 
     * @return
     *     The ratingImageUrl
     */
    public String getRatingImageUrl() {
        return ratingImageUrl;
    }

    /**
     * 
     * @param ratingImageUrl
     *     The rating_image_url
     */
    public void setRatingImageUrl(String ratingImageUrl) {
        this.ratingImageUrl = ratingImageUrl;
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
     *     The ancestors
     */
    public List<Ancestor> getAncestors() {
        return ancestors;
    }

    /**
     * 
     * @param ancestors
     *     The ancestors
     */
    public void setAncestors(List<Ancestor> ancestors) {
        this.ancestors = ancestors;
    }

    /**
     * 
     * @return
     *     The longitude
     */
    public String getLongitude() {
        return longitude;
    }

    /**
     * 
     * @param longitude
     *     The longitude
     */
    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    /**
     * 
     * @return
     *     The latitude
     */
    public String getLatitude() {
        return latitude;
    }

    /**
     * 
     * @param latitude
     *     The latitude
     */
    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    /**
     * 
     * @return
     *     The rating
     */
    public String getRating() {
        return rating;
    }

    /**
     * 
     * @param rating
     *     The rating
     */
    public void setRating(String rating) {
        this.rating = rating;
    }

    /**
     * 
     * @return
     *     The rankingData
     */
    public RankingData getRankingData() {
        return rankingData;
    }

    /**
     * 
     * @param rankingData
     *     The ranking_data
     */
    public void setRankingData(RankingData rankingData) {
        this.rankingData = rankingData;
    }

}
