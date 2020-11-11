package com.cont;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;
import com.DAO.RentDAO;
import com.DTO.MemberDTO;
import com.DTO.RentDTO;
import com.front.Command;

public class RequestService implements Command{

	@Override
	public String execut(HttpServletRequest request, HttpServletResponse response) {

		int car_num = Integer.parseInt(request.getParameter("car_num"));
		int request_company_id = Integer.parseInt(request.getParameter("request_company_id"));
		int response_company_id = Integer.parseInt(request.getParameter("response_company_id"));
		String first_day = request.getParameter("first_day");
		String last_day = request.getParameter("last_day");
		String comments = request.getParameter("comments");
		
		RentDTO dto = new RentDTO();
		RentDAO dao = new RentDAO();
		int cnt = dao.requestCar(dto);
		
		if (cnt > 0) {
			System.out.println("차량요청 성공");
		} else {
			System.out.println("차량요청 실패");
		}
		return "main.jsp";
		
	}

}
