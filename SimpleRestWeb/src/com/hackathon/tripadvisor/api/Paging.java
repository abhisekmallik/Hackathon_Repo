
package com.hackathon.tripadvisor.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Paging {

    @Expose
    private Object previous;
    @Expose
    private String skipped;
    @Expose
    private String results;
    @Expose
    private String next;
    @SerializedName("total_results")
    @Expose
    private String totalResults;

    /**
     * 
     * @return
     *     The previous
     */
    public Object getPrevious() {
        return previous;
    }

    /**
     * 
     * @param previous
     *     The previous
     */
    public void setPrevious(Object previous) {
        this.previous = previous;
    }

    /**
     * 
     * @return
     *     The skipped
     */
    public String getSkipped() {
        return skipped;
    }

    /**
     * 
     * @param skipped
     *     The skipped
     */
    public void setSkipped(String skipped) {
        this.skipped = skipped;
    }

    /**
     * 
     * @return
     *     The results
     */
    public String getResults() {
        return results;
    }

    /**
     * 
     * @param results
     *     The results
     */
    public void setResults(String results) {
        this.results = results;
    }

    /**
     * 
     * @return
     *     The next
     */
    public String getNext() {
        return next;
    }

    /**
     * 
     * @param next
     *     The next
     */
    public void setNext(String next) {
        this.next = next;
    }

    /**
     * 
     * @return
     *     The totalResults
     */
    public String getTotalResults() {
        return totalResults;
    }

    /**
     * 
     * @param totalResults
     *     The total_results
     */
    public void setTotalResults(String totalResults) {
        this.totalResults = totalResults;
    }

}
