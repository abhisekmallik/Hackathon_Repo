
package com.hackathon.tripadvisor.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Ancestor {

    @Expose
    private Object abbrv;
    @Expose
    private String level;
    @Expose
    private String name;
    @SerializedName("location_id")
    @Expose
    private String locationId;

    /**
     * 
     * @return
     *     The abbrv
     */
    public Object getAbbrv() {
        return abbrv;
    }

    /**
     * 
     * @param abbrv
     *     The abbrv
     */
    public void setAbbrv(Object abbrv) {
        this.abbrv = abbrv;
    }

    /**
     * 
     * @return
     *     The level
     */
    public String getLevel() {
        return level;
    }

    /**
     * 
     * @param level
     *     The level
     */
    public void setLevel(String level) {
        this.level = level;
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

}
