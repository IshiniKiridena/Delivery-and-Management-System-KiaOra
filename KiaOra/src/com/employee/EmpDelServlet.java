package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmpDelServlet")
public class EmpDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("empid");
		boolean isTrue;
		
		isTrue = EmpDBUtil.delsal(id);
		
		if(isTrue==true) {
			
			EmpDBUtil.deleteemployee(id);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("emp_reg.jsp");
			dispatcher.forward(request, response);
			
		}else {
			List<Employee> empdetails = EmpDBUtil.searchemp(id);
			request.setAttribute("empdetails", empdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
