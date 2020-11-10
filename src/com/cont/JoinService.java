package com.cont;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.DAO.MemberDAO;
import com.DTO.MemberDTO;

public class JoinService implements Command{

	public String execut(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		MemberDTO dto = new MemberDTO(email, pw, name);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.Join(dto);
		if (cnt > 0) {
			System.out.println("ȸ������ ����");
		} else {
			System.out.println("ȸ������ ����");
		}
		return "main.jsp";
	}

		
	
	
}
