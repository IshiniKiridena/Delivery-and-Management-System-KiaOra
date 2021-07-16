package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmpSearchServlet")
public class EmpSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("empid");
		
		try{
		List<Employee> empdetails = EmpDBUtil.searchemp(id);
		List<EmployeeSalary> empsaldetails = EmpDBUtil.getempsal(id);
		request.setAttribute("empdetails", empdetails);
		request.setAttribute("empsaldetails",empsaldetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("empuseraccount.jsp");
		dis.forward(request, response);
		
	}

}
