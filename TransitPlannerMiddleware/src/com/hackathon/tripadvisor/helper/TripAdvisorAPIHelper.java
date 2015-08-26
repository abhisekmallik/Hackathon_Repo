package com.hackathon.tripadvisor.helper;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.Gson;
import com.hackathon.tripadvisor.api.Datum;
import com.hackathon.tripadvisor.api.Example;
import com.hackathon.tripadvisor.custom.vo.LocationHotelVO;

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
		Datum data = null;
		String response = null;
		String path = "location_hotel_json.json"; 
		try {
			LocationHotelVO locHotelVO = new LocationHotelVO();
			JSONParser parser = new JSONParser();
			//obj = parser.parse(new FileReader(filePath + path));
			obj = parser.parse(new InputStreamReader(TripAdvisorAPIHelper.class.getResourceAsStream(path)));
			jsonObject = (JSONObject) obj;
	 		jsonData = jsonObject.toJSONString();
	 		System.out.println("File Content inside helper: \n" + jsonData);
	 		example = gson.fromJson(jsonData, Example.class);
	 		data = example.getData().get(0);
	 		System.out.println("Data name Content: \n" + data.getName());
	 		locHotelVO.setLatitude(data.getLatitude());
	 		locHotelVO.setLocationId(data.getLocationId());
	 		locHotelVO.setName(data.getName());
	 		locHotelVO.setRating(data.getRating());
	 		locHotelVO.setLocationString(data.getLocationString());
	 		locHotelVO.setLongitude(data.getLongitude());
	 		response = gson.toJson(locHotelVO);
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
