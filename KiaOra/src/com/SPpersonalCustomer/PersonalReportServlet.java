package com.SPpersonalCustomer;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;



/**
 * Servlet implementation class PersonalReportServlet
 */
@WebServlet("/PersonalReportServlet")
public class PersonalReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  String persYear = request.getParameter("persYear");
	        String persMonth = request.getParameter("persMonth");
	       
	        
	       
	         try {
	            
	                List<PersonalReport> personal_report=  SPpersonalDeliveryRegisterUtil.getPersonalReportDetails(persYear, persMonth);
	                 request.setAttribute("personal_report",personal_report);
	                
	                 RequestDispatcher dis = request.getRequestDispatcher("PersonalReportDisplay.jsp");
	                dis.forward(request, response);
	               
	               
	           
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		
	}

}
