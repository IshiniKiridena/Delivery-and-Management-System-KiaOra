package com.shopCatering;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.TimeZone;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class shopReportHandler
 */
@WebServlet("/shopReportHandler")
public class shopReportHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ldate= request.getParameter("startDate");
		String[] out = ldate.split("-");
		int year =Integer.parseInt(out[0]);
		int month = Integer.parseInt(out[1]);
		
		if(ldate.isEmpty()==true) {
			request.setAttribute("errorMsg", "Please selcet date");
		}
	
		

		//get months order details
		ArrayList<OrderClass> oDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderDetailsForreport(year, month);
		request.setAttribute("oDetails", oDetails);
		
		if(oDetails.isEmpty()==true) {
			request.setAttribute("errorMsg", "No results");
			request.setAttribute("hide", "hidden");
		}
			
		else {
			request.setAttribute("hide", "none");
		}
		
		//get months max order details
		ArrayList<MinMaxShop> MaxorderDetails = (ArrayList<MinMaxShop>) shopDBUtil.getMaxOrderDetails(year, month);
		request.setAttribute("MaxorderDetails", MaxorderDetails);
		
		//get months min order details
		ArrayList<MinMaxShop> MinorderDetails = (ArrayList<MinMaxShop>) shopDBUtil.getMinOrderDetails(year, month);
		request.setAttribute("MinorderDetails", MinorderDetails);
		
		
		double profit =  shopDBUtil.getprofit(year, month);
		
		request.setAttribute("profit",profit+"0/=");

		
		RequestDispatcher dis = request.getRequestDispatcher("shopReport.jsp");
		dis.forward(request, response);
		
	}

}
