package com.DTO;

public class RentDTO {
	private int req_num; // 번호판
	private int request_company_id; // 년식
	private int response_company_id; // 년식
	private String first_day; // 년식
	private String last_day; // 차 이미지
	private String carName; // 차량이름
	private String fuel; // 연료종류
	private String comments; // 차 이미지
	private String rent_type; //렌트종류
	private int rent_status; // 렌트현황

	public RentDTO() {

	}

	public RentDTO(int req_num, int request_company_id, int response_company_id, String first_day, String last_day,
			String carName, String fuel, String comments, String rent_type, int rent_status) {
		super();
		this.req_num = req_num;
		this.request_company_id = request_company_id;
		this.response_company_id = response_company_id;
		this.first_day = first_day;
		this.last_day = last_day;
		this.carName = carName;
		this.fuel = fuel;
		this.comments = comments;
		this.rent_type = rent_type;
		this.rent_status = rent_status;
	}

	public int getReq_num() {
		return req_num;
	}

	public void setReq_num(int req_num) {
		this.req_num = req_num;
	}

	public int getRequest_company_id() {
		return request_company_id;
	}

	public void setRequest_company_id(int request_company_id) {
		this.request_company_id = request_company_id;
	}

	public int getResponse_company_id() {
		return response_company_id;
	}

	public void setResponse_company_id(int response_company_id) {
		this.response_company_id = response_company_id;
	}

	public String getFirst_day() {
		return first_day;
	}

	public void setFirst_day(String first_day) {
		this.first_day = first_day;
	}

	public String getLast_day() {
		return last_day;
	}

	public void setLast_day(String last_day) {
		this.last_day = last_day;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getRent_type() {
		return rent_type;
	}

	public void setRent_type(String rent_type) {
		this.rent_type = rent_type;
	}

	public int getRent_status() {
		return rent_status;
	}

	public void setRent_status(int rent_status) {
		this.rent_status = rent_status;
	}

	
}
