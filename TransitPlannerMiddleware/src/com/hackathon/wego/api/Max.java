
package com.hackathon.wego.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Max {

    @Expose
    private Integer price;
    @SerializedName("price_usd")
    @Expose
    private Double priceUsd;
    @SerializedName("price_str")
    @Expose
    private String priceStr;
    @SerializedName("currency_code")
    @Expose
    private String currencyCode;

    /**
     * 
     * @return
     *     The price
     */
    public Integer getPrice() {
        return price;
    }

    /**
     * 
     * @param price
     *     The price
     */
    public void setPrice(Integer price) {
        this.price = price;
    }

    /**
     * 
     * @return
     *     The priceUsd
     */
    public Double getPriceUsd() {
        return priceUsd;
    }

    /**
     * 
     * @param priceUsd
     *     The price_usd
     */
    public void setPriceUsd(Double priceUsd) {
        this.priceUsd = priceUsd;
    }

    /**
     * 
     * @return
     *     The priceStr
     */
    public String getPriceStr() {
        return priceStr;
    }

    /**
     * 
     * @param priceStr
     *     The price_str
     */
    public void setPriceStr(String priceStr) {
        this.priceStr = priceStr;
    }

    /**
     * 
     * @return
     *     The currencyCode
     */
    public String getCurrencyCode() {
        return currencyCode;
    }

    /**
     * 
     * @param currencyCode
     *     The currency_code
     */
    public void setCurrencyCode(String currencyCode) {
        this.currencyCode = currencyCode;
    }

}
