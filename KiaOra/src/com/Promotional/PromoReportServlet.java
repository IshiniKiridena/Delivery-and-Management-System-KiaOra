package com.Promotional;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PromoReportServlet")
public class PromoReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		
		String prorepYear = request.getParameter("prorepYear");
		String prorepMonth = request.getParameter("prorepMonth");
		
		
		 try {
			 
			 	List<PromoReport> promo_report=  PromoCustomerDBUtil.getReportDetails(prorepYear, prorepMonth);
			 	request.setAttribute("promo_report",promo_report);
			 	
			 	RequestDispatcher dis = request.getRequestDispatcher("PromoDisplayReport.jsp");
				dis.forward(request, response);
				
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		
		
		
	}

}
