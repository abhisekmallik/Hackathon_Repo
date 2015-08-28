
package com.hackathon.wego.api;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class Rates {

    @Expose
    private Min min;
    @Expose
    private Max max;

    /**
     * 
     * @return
     *     The min
     */
    public Min getMin() {
        return min;
    }

    /**
     * 
     * @param min
     *     The min
     */
    public void setMin(Min min) {
        this.min = min;
    }

    /**
     * 
     * @return
     *     The max
     */
    public Max getMax() {
        return max;
    }

    /**
     * 
     * @param max
     *     The max
     */
    public void setMax(Max max) {
        this.max = max;
    }

}
