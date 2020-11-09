package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.CarDTO;
import com.DTO.MemberDTO;

public class CarDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	int cnt = 0;

	private void getConn() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String dbid = "hr";
		String dbpw = "hr";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void close() { // 닫기
		try {
			if (pst != null) {
				pst.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	//car_info DB에 자동차 추가
	public int insertCar(CarDTO dto) {
		getConn();
		String sql = "insert into car_info(car_num, name, car_type, fuel, car_year,company_id)"
				+ "values (?,?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getCar_num());
			pst.setString(2, dto.getName());
			pst.setString(3, dto.getCar_type());
			pst.setString(4, dto.getFuel());
			pst.setString(5, dto.getCar_year());
			pst.setInt(6, dto.getCompany_id());
			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	//렌터카사장 로그인 했을 시 소유한 자동차 목록 보여주기
	public ArrayList<CarDTO> selectOneCompany(MemberDTO memberDTO) {
		ArrayList<CarDTO> list = new ArrayList<CarDTO>();
		getConn();
		String sql = "select * from car_info where company_id = (select company_id from rent_member where email like ?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, memberDTO.getEmail());
			rs = pst.executeQuery();
			while(rs.next()) {
				CarDTO carDTO = new CarDTO();
				carDTO.setCar_num(rs.getString(1));
				carDTO.setName(rs.getString(2));
				carDTO.setCar_type(rs.getString(3));
				carDTO.setFuel(rs.getString(4));
				carDTO.setCar_year(rs.getString(5));
				carDTO.setImg(rs.getString(6));
				carDTO.setRent(rs.getInt(7));
				carDTO.setCompany_id(rs.getInt(8));
				
				list.add(carDTO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}

	//렌터카 대여
	public int rent(CarDTO dto) {
		getConn();
		String sql = "update car_info set rent = 1 where car_num = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getCar_num());
			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	//전체 렌터카 출력
	public ArrayList<CarDTO> selectAll(){
		ArrayList<CarDTO> list = new ArrayList<CarDTO>();
		getConn();
		String sql = "select * from car_info";
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()) {
				CarDTO carDTO = new CarDTO();
				carDTO.setCar_num(rs.getString(1));
				carDTO.setName(rs.getString(2));
				carDTO.setCar_type(rs.getString(3));
				carDTO.setFuel(rs.getString(4));
				carDTO.setCar_year(rs.getString(5));
				carDTO.setImg(rs.getString(6));
				carDTO.setRent(rs.getInt(7));
				carDTO.setCompany_id(rs.getInt(8));
				
				list.add(carDTO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}


}
