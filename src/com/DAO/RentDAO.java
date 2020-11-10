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
		String sql = "insert into rent_car(car_num, request_company_id, response_company_id, first_day, first_day, comments)"
				+ "values (?,?,null,?,?,?)";
		try {

			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getCar_num());
			pst.setInt(2, dto.getRequest_company_id());
			pst.setString(3, dto.getFirst_day());
			pst.setString(4, dto.getLast_day());
			pst.setString(5, dto.getComments());
			cnt = pst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public int responseCar(int Car_num, int Request_company_id) {
		getConn();
		String sql = "update rent_car set Request_company_id = ? where Car_num = ?";
		try {
			pst = conn.prepareStatement(sql);

			pst.setInt(1, Request_company_id);
			pst.setInt(2, Car_num);

			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

}
