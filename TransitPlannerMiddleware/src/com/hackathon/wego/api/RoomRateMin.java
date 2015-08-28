
package com.hackathon.wego.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class RoomRateMin {

    @Expose
    private String id;
    @SerializedName("price_str")
    @Expose
    private String priceStr;
    @SerializedName("currency_code")
    @Expose
    private String currencyCode;
    @SerializedName("currency_sym")
    @Expose
    private String currencySym;
    @SerializedName("provider_name")
    @Expose
    private String providerName;
    @SerializedName("provider_code")
    @Expose
    private String providerCode;
    @SerializedName("mobile_friendly")
    @Expose
    private Boolean mobileFriendly;
    @SerializedName("ex_tax")
    @Expose
    private Boolean exTax;
    @SerializedName("is_direct")
    @Expose
    private Boolean isDirect;

    /**
     * 
     * @return
     *     The id
     */
    public String getId() {
        return id;
    }

    /**
     * 
     * @param id
     *     The id
     */
    public void setId(String id) {
        this.id = id;
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

    /**
     * 
     * @return
     *     The currencySym
     */
    public String getCurrencySym() {
        return currencySym;
    }

    /**
     * 
     * @param currencySym
     *     The currency_sym
     */
    public void setCurrencySym(String currencySym) {
        this.currencySym = currencySym;
    }

    /**
     * 
     * @return
     *     The providerName
     */
    public String getProviderName() {
        return providerName;
    }

    /**
     * 
     * @param providerName
     *     The provider_name
     */
    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    /**
     * 
     * @return
     *     The providerCode
     */
    public String getProviderCode() {
        return providerCode;
    }

    /**
     * 
     * @param providerCode
     *     The provider_code
     */
    public void setProviderCode(String providerCode) {
        this.providerCode = providerCode;
    }

    /**
     * 
     * @return
     *     The mobileFriendly
     */
    public Boolean getMobileFriendly() {
        return mobileFriendly;
    }

    /**
     * 
     * @param mobileFriendly
     *     The mobile_friendly
     */
    public void setMobileFriendly(Boolean mobileFriendly) {
        this.mobileFriendly = mobileFriendly;
    }

    /**
     * 
     * @return
     *     The exTax
     */
    public Boolean getExTax() {
        return exTax;
    }

    /**
     * 
     * @param exTax
     *     The ex_tax
     */
    public void setExTax(Boolean exTax) {
        this.exTax = exTax;
    }

    /**
     * 
     * @return
     *     The isDirect
     */
    public Boolean getIsDirect() {
        return isDirect;
    }

    /**
     * 
     * @param isDirect
     *     The is_direct
     */
    public void setIsDirect(Boolean isDirect) {
        this.isDirect = isDirect;
    }

}
