
package com.hackathon.tripadvisor.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class AddressObj {

    @Expose
    private String street1;
    @Expose
    private String street2;
    @Expose
    private String city;
    @Expose
    private String state;
    @Expose
    private String country;
    @Expose
    private String postalcode;
    @SerializedName("address_string")
    @Expose
    private String addressString;

    /**
     * 
     * @return
     *     The street1
     */
    public String getStreet1() {
        return street1;
    }

    /**
     * 
     * @param street1
     *     The street1
     */
    public void setStreet1(String street1) {
        this.street1 = street1;
    }

    /**
     * 
     * @return
     *     The street2
     */
    public String getStreet2() {
        return street2;
    }

    /**
     * 
     * @param street2
     *     The street2
     */
    public void setStreet2(String street2) {
        this.street2 = street2;
    }

    /**
     * 
     * @return
     *     The city
     */
    public String getCity() {
        return city;
    }

    /**
     * 
     * @param city
     *     The city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * 
     * @return
     *     The state
     */
    public String getState() {
        return state;
    }

    /**
     * 
     * @param state
     *     The state
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * 
     * @return
     *     The country
     */
    public String getCountry() {
        return country;
    }

    /**
     * 
     * @param country
     *     The country
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * 
     * @return
     *     The postalcode
     */
    public String getPostalcode() {
        return postalcode;
    }

    /**
     * 
     * @param postalcode
     *     The postalcode
     */
    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    /**
     * 
     * @return
     *     The addressString
     */
    public String getAddressString() {
        return addressString;
    }

    /**
     * 
     * @param addressString
     *     The address_string
     */
    public void setAddressString(String addressString) {
        this.addressString = addressString;
    }

}
