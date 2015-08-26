
package com.hackathon.tripadvisor.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Category {

    @Expose
    private String name;
    @SerializedName("localized_name")
    @Expose
    private String localizedName;

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
     *     The localizedName
     */
    public String getLocalizedName() {
        return localizedName;
    }

    /**
     * 
     * @param localizedName
     *     The localized_name
     */
    public void setLocalizedName(String localizedName) {
        this.localizedName = localizedName;
    }

}
