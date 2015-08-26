
package com.hackathon.tripadvisor.api;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Award {

    @SerializedName("award_type")
    @Expose
    private String awardType;
    @Expose
    private String year;
    @Expose
    private Images images;
    @Expose
    private List<Object> categories = new ArrayList<Object>();
    @SerializedName("display_name")
    @Expose
    private String displayName;

    /**
     * 
     * @return
     *     The awardType
     */
    public String getAwardType() {
        return awardType;
    }

    /**
     * 
     * @param awardType
     *     The award_type
     */
    public void setAwardType(String awardType) {
        this.awardType = awardType;
    }

    /**
     * 
     * @return
     *     The year
     */
    public String getYear() {
        return year;
    }

    /**
     * 
     * @param year
     *     The year
     */
    public void setYear(String year) {
        this.year = year;
    }

    /**
     * 
     * @return
     *     The images
     */
    public Images getImages() {
        return images;
    }

    /**
     * 
     * @param images
     *     The images
     */
    public void setImages(Images images) {
        this.images = images;
    }

    /**
     * 
     * @return
     *     The categories
     */
    public List<Object> getCategories() {
        return categories;
    }

    /**
     * 
     * @param categories
     *     The categories
     */
    public void setCategories(List<Object> categories) {
        this.categories = categories;
    }

    /**
     * 
     * @return
     *     The displayName
     */
    public String getDisplayName() {
        return displayName;
    }

    /**
     * 
     * @param displayName
     *     The display_name
     */
    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

}
