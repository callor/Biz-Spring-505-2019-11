package com.biz.gdata.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.gdata.config.DataGoConfig;
import com.biz.gdata.domain.AreaBaseDTO;
import com.biz.gdata.domain.CityVO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;

@Service
public class TourAppService {
	
	@Autowired
	TourGetService tgService;

	private String getHeaderQuery(String servName) throws UnsupportedEncodingException {
		String queryString = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/" + servName;

		queryString += "?ServiceKey=" + DataGoConfig.goDataAuth;
		queryString += "&MobileApp=" + URLEncoder.encode(DataGoConfig.MY_APP_NAME, "UTF-8");
		queryString += "&_type=json";
		queryString += "&MobileOS=ETC";
		
		queryString += String.format("&numOfRows=%d", 20);
		queryString += String.format("&pageNo=%d", 1);
		return queryString;
	}
	
	public String getAreaQuery() throws UnsupportedEncodingException {
		String queryString = this.getHeaderQuery("areaCode");
		return queryString;
	}
	
	public List<CityVO> getAreaData() throws JsonSyntaxException, IOException {
		
		// 이 클래스에서 만든 query 문자열을
		// tgService의 getDateString()에 보내서
		// 데이터 조회를 하는  method
		String resString = tgService.getDataString(this.getAreaQuery());
		
		JsonElement jElement 
			= JsonParser.parseString(resString);

		// response tag
		JsonObject oRes 
		= (JsonObject)jElement.getAsJsonObject().get("response");
		
		// response.body
		JsonObject oBody 
		= (JsonObject)oRes.getAsJsonObject().get("body");
		
		// response.body.items
		JsonObject oItems 
		= (JsonObject)oBody.getAsJsonObject().get("items");
		
		// response.body.items.item
		JsonArray oitemList 
		= (JsonArray)oItems.getAsJsonObject().get("item");
		
		/*
		 * gson에 있는 class
		 * JsonArray 데이터를 List형 데이터로 변환하는 도구
		 * 
		 * 1. JsonArray를 List형으로 변환하기 위한 변환 바구니를 생성
		 * 2. Gson을 이용하여 List형으로 변환
		 */
		TypeToken<List<CityVO>> cityToken  
		= new TypeToken<List<CityVO>>() {} ;
		
		// toKen도구를 사용하여 
		// List<Class> 형으로 변환하는 method 호출
		Gson gson = new Gson();
		List<CityVO> cityList 
		= gson.fromJson(oitemList, cityToken.getType()); 
		
		return cityList;
		
	}

	
	
	public String getAreaBaseQuery(String cityCode) throws UnsupportedEncodingException {

		String queryString = this.getHeaderQuery("areaBasedList");
		
		queryString += "&arrange=A";
		queryString += "&contentTypeId=15";
		queryString += String.format("&areaCode=%s",cityCode);
		queryString += String.format("&sigunguCode=%s",cityCode);
		queryString += "&listYN=Y";
		return queryString;

	}
	
	public List<AreaBaseDTO> getAreaBaseListData(String cityCode) throws JsonSyntaxException, IOException {
		
		String resString 
		= tgService.getDataString(this.getAreaBaseQuery(cityCode));
		
		JsonElement jElement 
			= JsonParser.parseString(resString);
		
		JsonObject oRes 
		= (JsonObject)jElement.getAsJsonObject().get("response");
		
		JsonObject oBody 
		= (JsonObject)oRes.getAsJsonObject().get("body");
		
		JsonObject oItems 
		= (JsonObject)oBody.getAsJsonObject().get("items");
		
		JsonArray oitemList 
		= (JsonArray)oItems.getAsJsonObject().get("item");
		
		TypeToken<List<AreaBaseDTO>> cityToken  
		= new TypeToken<List<AreaBaseDTO>>() {} ;
		
		Gson gson = new Gson();
		List<AreaBaseDTO> baseList 
		= gson.fromJson(oitemList, cityToken.getType()); 
		
		return baseList;
		
	}



}
