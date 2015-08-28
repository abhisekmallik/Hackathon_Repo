package com.hackathon.emiratesapi;
 
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import org.json.JSONException;
import org.json.simple.JSONObject;

import com.hackathon.common.constants.TransitPlannerConstants;
import com.hackathon.emiratesapi.helper.EmiratesrAPIHelper;
 
@Path("/emiratesapi")
public class EmiratesAPIService {
 
	  
	  @GET
	  @Produces("application/json")
	  @Path("/getEmiratesLocationHotels.json")
	  public String getLocationHotelsCustom() {
 		String jsonData = "";
 		jsonData = EmiratesrAPIHelper.getJsonHotelList(TransitPlannerConstants.EMIRTAES_HOTEL_LIST_URL);
 		System.out.println("File Content: \n" + jsonData);
		return jsonData;	
	  }
	  
	  /*@GET
	  @Produces("application/json")
	  @Path("/getEmiratesLocationHotels.json")
	  public String getSkyScannrHotels() {
 		String jsonData = "";
 		jsonData = EmiratesrAPIHelper.getJsonHotelList(TransitPlannerConstants.);
 		System.out.println("File Content: \n" + jsonData);
		return jsonData;	
	  }*/
 
 
	  @Path("{f}")
	  @GET
	  @Produces("application/json")
	  public String convertFtoCfromInput(@PathParam("f") float f) throws JSONException {
 
		JSONObject jsonObject = new JSONObject();
		float celsius;
		celsius =  (f - 32)*5/9; 
		jsonObject.put("F Value", f); 
		jsonObject.put("C Value", celsius);
 
		String result = jsonObject.toString();
		//return Response.status(200).entity(result).build();
		return result;
	  }
}