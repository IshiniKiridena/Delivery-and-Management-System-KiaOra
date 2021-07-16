package com.employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/EmpLoginServlet")
public class EmpLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
		String username = request.getParameter("euid");
		String password = request.getParameter("epass");
		
		boolean isTrue;
		
		isTrue=EmpDBUtil.validate(username, password);
		
		Employee employee = new Employee();
		employee.setUsername(username);
		employee.setPassword(password);
		
		EmpDBUtil empdb = new EmpDBUtil();
		
		try {
			String userValidate = empdb.authenticateUser(employee);
			
			if(userValidate.equals("adminrole")) {
				HttpSession session = request.getSession(); 
				session.setAttribute("Admin", username); 
				request.setAttribute("username", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("adminAccount.jsp");
				dis.forward(request, response);
			}else if(userValidate.equals("driverrole")){
				HttpSession session = request.getSession(); 
				session.setAttribute("Driver", username); 
				request.setAttribute("username", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("DriverAccount.jsp");
				dis.forward(request, response);
			}else if(userValidate.equals("manager")) {
				HttpSession session = request.getSession(); 
				session.setAttribute("Manager", username); 
				request.setAttribute("username", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("ManagerAccount.jsp");
				dis.forward(request, response);
			}else if(userValidate.equals("salesrep")) {
				HttpSession session = request.getSession(); 
				session.setAttribute("Sales Representative", username); 
				request.setAttribute("username", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("SalesRepAccount.jsp");
				dis.forward(request, response);
			}else if(userValidate.equals("technician")) {
				HttpSession session = request.getSession(); 
				session.setAttribute("Technician", username); 
				request.setAttribute("username", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("TechAccount.jsp");
				dis.forward(request, response);
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='emp_login.jsp'");
				out.println("</script>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
}

}