package com.hackathon.emiratesapi;
 
/**
 * @author Avishek
 */
 
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import org.json.JSONException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.hackathon.emiratesapi.helper.EmiratesrAPIHelper;
import com.hackathon.tripadvisor.helper.TripAdvisorAPIHelper;
 
@Path("/emiratesapi")
public class EmiratesAPIService {
 
	  
	  @GET
	  @Produces("application/json")
	  @Path("/getEmiratesLocationHotels.json")
	  public String getLocationHotelsCustom() {
 		String jsonData = "";
 		jsonData = EmiratesrAPIHelper.getJsonHotelList();
 		System.out.println("File Content: \n" + jsonData);
		return jsonData;	
	  }
 
 
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