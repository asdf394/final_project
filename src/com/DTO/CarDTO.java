package com.DTO;

public class CarDTO {
	//num, type, year 변수는 예약어 때문에 앞에 car 붙여둠
	private String car_num;		//번호판
	private String name;		//차 이름
	private String car_type;	//차종
	private String fuel;		//연료
	private String car_year;	//년식
	private String img;  		//차 이미지
	private int rent; 			// 1 : 대여중, 0 : 대여가능
	private int company_id; //업체명
	
	
	
	
	public CarDTO() {}
	
	@Override
	public String toString() {
		return "CarDTO [car_num=" + car_num + ", name=" + name + ", car_type=" + car_type + ", fuel=" + fuel
				+ ", car_year=" + car_year + ", img=" + img + ", rent=" + rent
				+ ", company_id=" + company_id + "]";
	}
	public String getCar_num() {
		return car_num;
	}
	public void setCar_num(String car_num) {
		this.car_num = car_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getFuel() {
		return fuel;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public String getCar_year() {
		return car_year;
	}
	public void setCar_year(String car_year) {
		this.car_year = car_year;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getRent() {
		return rent;
	}
	public void setRent(int rent) {
		this.rent = rent;
	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	
	
}

