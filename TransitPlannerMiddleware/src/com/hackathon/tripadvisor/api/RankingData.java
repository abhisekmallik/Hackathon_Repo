
package com.hackathon.tripadvisor.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class RankingData {

    @SerializedName("geo_location_id")
    @Expose
    private String geoLocationId;
    @SerializedName("ranking_string")
    @Expose
    private String rankingString;
    @SerializedName("geo_location_name")
    @Expose
    private String geoLocationName;
    @SerializedName("ranking_out_of")
    @Expose
    private String rankingOutOf;
    @Expose
    private String ranking;

    /**
     * 
     * @return
     *     The geoLocationId
     */
    public String getGeoLocationId() {
        return geoLocationId;
    }

    /**
     * 
     * @param geoLocationId
     *     The geo_location_id
     */
    public void setGeoLocationId(String geoLocationId) {
        this.geoLocationId = geoLocationId;
    }

    /**
     * 
     * @return
     *     The rankingString
     */
    public String getRankingString() {
        return rankingString;
    }

    /**
     * 
     * @param rankingString
     *     The ranking_string
     */
    public void setRankingString(String rankingString) {
        this.rankingString = rankingString;
    }

    /**
     * 
     * @return
     *     The geoLocationName
     */
    public String getGeoLocationName() {
        return geoLocationName;
    }

    /**
     * 
     * @param geoLocationName
     *     The geo_location_name
     */
    public void setGeoLocationName(String geoLocationName) {
        this.geoLocationName = geoLocationName;
    }

    /**
     * 
     * @return
     *     The rankingOutOf
     */
    public String getRankingOutOf() {
        return rankingOutOf;
    }

    /**
     * 
     * @param rankingOutOf
     *     The ranking_out_of
     */
    public void setRankingOutOf(String rankingOutOf) {
        this.rankingOutOf = rankingOutOf;
    }

    /**
     * 
     * @return
     *     The ranking
     */
    public String getRanking() {
        return ranking;
    }

    /**
     * 
     * @param ranking
     *     The ranking
     */
    public void setRanking(String ranking) {
        this.ranking = ranking;
    }

}
