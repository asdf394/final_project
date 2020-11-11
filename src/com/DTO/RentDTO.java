package com.DTO;

public class RentDTO {
	private int car_num; // ��ȣ��
	private int request_company_id; // ���
	private int response_company_id; // ���
	private String first_day; // ���
	private String last_day; // �� �̹���
	private String comments; // �� �̹���

	public RentDTO() {

	}

	public RentDTO(int car_num, int request_company_id, int response_company_id, String first_day, String last_day,
			String comments) {
		super();
		this.car_num = car_num;
		this.request_company_id = request_company_id;
		this.response_company_id = response_company_id;
		this.first_day = first_day;
		this.last_day = last_day;
		this.comments = comments;
	}

	public RentDTO(int car_num, int request_company_id, String first_day, String last_day, String comments) {
		super();
		this.car_num = car_num;
		this.request_company_id = request_company_id;
		this.first_day = first_day;
		this.last_day = last_day;
		this.comments = comments;
	}

	public int getCar_num() {
		return car_num;
	}

	public void setCar_num(int car_num) {
		this.car_num = car_num;
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

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

}
