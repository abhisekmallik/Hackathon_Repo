package com.hackathon.tripadvisor.helper;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.Gson;
import com.hackathon.common.constants.TransitPlannerConstants;
import com.hackathon.emiratesapi.helper.EmiratesrAPIHelper;
import com.hackathon.tripadvisor.api.Datum;
import com.hackathon.tripadvisor.api.Example;
import com.hackathon.tripadvisor.custom.vo.LocationHotelNode;
import com.hackathon.tripadvisor.custom.vo.LocationHotelVO;
import com.hackathon.tripadvisor.custom.vo.Node;

public class TripAdvisorAPIHelper {
	
	
	/*public static Object getJsonDataFromFile(){
		Object obj = null;
		try {
			JSONParser parser = new JSONParser();
			obj = parser.parse(new FileReader("D:\\HACKATHON\\Project\\TripAdvisor\\location_hotel_json.json"));
		} catch (FileNotFoundException e) {
 			e.printStackTrace();
 		} catch (IOException e) {
 			e.printStackTrace();
 		} catch (ParseException e) {
 			e.printStackTrace();
 		} 
		return obj;
	}*/
	
	public static String getJsonDataFromFile(){
		Object obj = null;
		String jsonData = "";
		JSONObject jsonObject = null;
		Gson gson = new Gson();
		Example example = null;
		//Datum data = null;
		String response = null;
		String path = "location_hotel_json.json"; 
		try {
			LocationHotelNode node=new LocationHotelNode();
			Node parentNode=new Node();
			JSONParser parser = new JSONParser();
			//obj = parser.parse(new FileReader(filePath + path));
			obj = parser.parse(new InputStreamReader(TripAdvisorAPIHelper.class.getResourceAsStream(path)));
			jsonObject = (JSONObject) obj;
	 		jsonData = jsonObject.toJSONString();
	 		System.out.println("File Content inside helper: \n" + jsonData);
	 		example = gson.fromJson(jsonData, Example.class);
	 		//data = example.getData().get(0);
	 		//System.out.println("Data name Content: \n" + data.getName());
	 		for(Datum data:example.getData()){
	 			LocationHotelVO locHotelVO = new LocationHotelVO();
	 			locHotelVO.setAddressObj(data.getAddressObj());
		 		locHotelVO.setSeeAllPhotos(data.getSeeAllPhotos());
		 		locHotelVO.setLocalizedName(data.getCategory().getLocalizedName());
		 		locHotelVO.setRatingImageUrl(data.getRatingImageUrl());
		 		locHotelVO.setLatitude(data.getLatitude());
		 		locHotelVO.setLocationId(data.getLocationId());
		 		locHotelVO.setName(data.getName());
		 		locHotelVO.setRating(data.getRating());
		 		locHotelVO.setLocationString(data.getLocationString());
		 		locHotelVO.setLongitude(data.getLongitude());
		 		locHotelVO.getRoomTypeRentMap().put("Standard", "AED 476");
		 		//locHotelVO.getRoomTypeRentMap().put("StandardSingleBF", "AED 300");
		 		//locHotelVO.getRoomTypeRentMap().put("StandardDouble", "AED 372");
		 		//locHotelVO.getRoomTypeRentMap().put("StandardDoubleBF", "AED 472");
		 		locHotelVO.getRoomTypeRentMap().put("Delux", "AED 872");
		 		//locHotelVO.getRoomTypeRentMap().put("DeluxSingleBF", "AED 972");
		 		//locHotelVO.getRoomTypeRentMap().put("DeluxDouble", "AED 1372");
		 		//locHotelVO.getRoomTypeRentMap().put("DeluxDoubleBF", "AED 1472");
		 		node.getLocationHotelVo().add(locHotelVO);
	 		}
	 		
	 		parentNode.setNode(node);
	 		response = gson.toJson(parentNode);
	 		//api calls 
	 		EmiratesrAPIHelper.getJsonHotelList(TransitPlannerConstants.EMIRTAES_HOTEL_LIST_URL);
	 		//EmiratesrAPIHelper.getJsonHotelList(TransitPlannerConstants.SKYSCANNER_HOTEL_LIST_URL);
		} catch (FileNotFoundException e) {
 			e.printStackTrace();
 		} catch (IOException e) {
 			e.printStackTrace();
 		} catch (ParseException e) {
 			e.printStackTrace();
 		} catch (Exception e) {
 			e.printStackTrace();
 		} 
		return response;
	}

}
