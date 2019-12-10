package com.biz.gdata.domain;



public class TourDTO {
	
	private String t_city;
	public TourDTO(String t_city) {
		super();
		this.t_city = t_city;
	}
	public TourDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getT_city() {
		return t_city;
	}
	public void setT_city(String t_city) {
		this.t_city = t_city;
	}
}
