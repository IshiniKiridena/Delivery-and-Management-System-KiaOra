package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmpUpdateServlet")
public class EmpUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("empid");
		String name = request.getParameter("empname");
		String username = request.getParameter("empun");
		String password = request.getParameter("emppw");
		String address = request.getParameter("empadd");
		int phone = Integer.parseInt(request.getParameter("empphne"));
		String position = request.getParameter("emppos");
		String saldate = request.getParameter("empdate");
		Double basicsal = Double.parseDouble(request.getParameter("empbsal"));
		Double targetcovered = Double.parseDouble(request.getParameter("emptc"));
		Double targetsales = Double.parseDouble(request.getParameter("empts"));
		int commision = Integer.parseInt(request.getParameter("empcom"));
		Double totalsal = null;
		
		boolean isTrue,isTrue2;
		isTrue=EmpDBUtil.updateemployee(id, name, username, password, address, phone, position);
		isTrue2=EmpDBUtil.upempsal(id, saldate, basicsal, targetcovered, targetsales, commision,totalsal);
		
		if(isTrue==true && isTrue2==true) {
			
			List<Employee> empdetails = EmpDBUtil.searchemp(id);
			List<EmployeeSalary> empsaldetails = EmpDBUtil.getempsal(id);
			request.setAttribute("empdetails", empdetails);
			request.setAttribute("empsaldetails",empsaldetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("empuseraccount.jsp");
			dis.forward(request, response);
		}else {
			List<Employee> empdetails = EmpDBUtil.searchemp(id);
			request.setAttribute("empdetails", empdetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("empuseraccount.jsp");
			dis.forward(request, response);
		}
			
	}

}
