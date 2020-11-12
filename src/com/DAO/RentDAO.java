package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.MemberDTO;
import com.DTO.RentDTO;

public class RentDAO {
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

	// car_info DB에 자동차 추가
	public int requestCar(RentDTO dto) {
		getConn();
		String sql = "insert into rent_car(req_num, request_company_id, response_company_id, first_day, last_day, carName,fuel,comments,rent_type,rent_status)"
				+ "values (req_num_seq.nextval,?,null,?,?,?,?,?,?,0)";
		try {

			pst = conn.prepareStatement(sql);
			pst.setInt(1, dto.getRequest_company_id());
			pst.setString(2, dto.getFirst_day());
			pst.setString(3, dto.getLast_day());
			pst.setString(4, dto.getCarName());
			pst.setString(5, dto.getFuel());
			pst.setString(6, dto.getComments());
			pst.setString(7, dto.getRent_type());
			cnt = pst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public ArrayList<RentDTO> viewall() {
		ArrayList<RentDTO> list = new ArrayList<RentDTO>();
		
		getConn();
		
		String sql = "select * from rent_car";
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while (rs.next()) {
				int req_num = rs.getInt(1);
				int request_company_id = rs.getInt(2);
				int response_company_id = rs.getInt(3);
				String first_day = rs.getString(4);
				String last_day = rs.getString(5);
				String carName = rs.getString(6);
				String fuel = rs.getString(7);
				String comments = rs.getString(8);
				String rent_type = rs.getString(9);
				int rent_status = rs.getInt(10);

				RentDTO dto = new RentDTO(req_num, request_company_id, response_company_id, first_day, last_day, carName, fuel, comments, rent_type, rent_status);
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	}

