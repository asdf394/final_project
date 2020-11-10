package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DTO.MemberDTO;

public class MemberDAO {
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
	
	public int Join(MemberDTO dto) {

		try {
			getConn();
			String sql = "insert into rent_member(company_id,email,pw,name,companyName,location,phone)"
					+ " values(rent_id_seq.nextval,?,?,?,?,?,?)";
			pst = conn.prepareStatement(sql);
	
			pst.setString(1, dto.getEmail());
			pst.setString(2, dto.getPw());
			pst.setString(3, dto.getName());
			pst.setString(4, dto.getCompanyName());			
			pst.setString(5, dto.getLocation());
			pst.setString(6, dto.getPhone());
			cnt = pst.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {

		MemberDTO rdto = null;

		try {

			getConn();

			String sql = "select * from rent_member where email = ? and pw = ?";   //멤버 테이블 작성
			
			
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getEmail());
			pst.setString(2, dto.getPw());

			rs = pst.executeQuery();

			if (rs.next()) {
				String email = rs.getString(1);
				String pw = rs.getString(2);
				rdto = new MemberDTO();
				rdto.setEmail(email);
				rdto.setPw(pw);
				System.out.println("db에 값이 존재"+email);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rdto;
	}

	
	public int setMember(String companyName, String phone, String location) {
		getConn();
		String sql = "insert into rent_member(company_id, email, pw, name, companyName, phone,location)"
				+ "values (rent_id_seq.nextval,rent_id_seq.nextval, rent_id_seq.nextval, rent_id_seq.nextval, ?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, companyName);
			pst.setString(2, phone);
			pst.setString(3, location);
			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	//렌터카 업체 갯수
	public int countRentCompany() {
		int company = 0;
		getConn();
		String sql = "select count(*) from rent_member";
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if(rs.next()) {
				company = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return company;
	}

	public int update(MemberDTO dto) {
		int cnt = 0;

		getConn();

		String sql = "update rent_member set pw = ?, companyName = ?,  location = ?, phone = ? where id = ?"; // 멤버 테이블 작성

		try {
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getPw());
			pst.setString(2, dto.getCompanyName());
			pst.setString(3, dto.getLocation());
			pst.setString(4, dto.getPhone());
			pst.setString(5, dto.getEmail());

			cnt = pst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
}
