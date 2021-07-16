package com.employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmployeeRegServlet")
public class EmpRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("nic");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String position = request.getParameter("position");
		String username = request.getParameter("uid");
		String password = request.getParameter("pw");
		
		boolean isTrue;
		
		isTrue = EmpDBUtil.insertemp(id, name, address,phone, position, username, password);
		
		
		if(isTrue == true) {
					
			EmpDBUtil.insertsal(id);
			
			RequestDispatcher dis = request.getRequestDispatcher("employeeInsertSuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("empinsertunsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
