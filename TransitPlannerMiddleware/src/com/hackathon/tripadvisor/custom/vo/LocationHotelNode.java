/**
 * 
 */
package com.hackathon.tripadvisor.custom.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * @author VICK
 *
 */
public class LocationHotelNode {

	private List<LocationHotelVO> locationHotelVo;

	/**
	 * @return the locationHotelVo
	 */
	public List<LocationHotelVO> getLocationHotelVo() {
		if(locationHotelVo==null)
		 locationHotelVo=new ArrayList<LocationHotelVO>();
		return locationHotelVo;
	}
	
}
