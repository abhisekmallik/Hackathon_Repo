package com.hackathon.wigo.service;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import com.hackathon.wego.helper.WigoApiHelper;

@Path("/wigoservices")
public class WigoServices {

	  @GET
	  @Produces("application/json")
	  @Path("/getWegoLocationHotels.json")
	  public String getHotels() {
		String jsonData = "";
		jsonData = WigoApiHelper.getJsonDataFromFile();
		System.out.println("File Content: \n" + jsonData);
		return jsonData;	
	  }

}
