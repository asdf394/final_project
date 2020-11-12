package com.DTO;

public class RentDTO {
	private int req_num; // ��ȣ��
	private int request_company_id; // ���
	private int response_company_id; // ���
	private String first_day; // ���
	private String last_day; // �� �̹���
	private String carName; // �����̸�
	private String fuel; // ��������
	private String comments; // �� �̹���
	private String rent_type; //��Ʈ����
	private int rent_status; // ��Ʈ��Ȳ

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
