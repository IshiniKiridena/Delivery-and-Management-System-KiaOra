package com.shopCatering;

import java.io.IOException;
import java.sql.Date;
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
 * Servlet implementation class shopHomeServlet
 */
@WebServlet("/shopHomeServlet")
public class shopHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String shopID = "SH101";
		
		Calendar localCalendar = Calendar.getInstance(TimeZone.getDefault());
		
		 Calendar c = Calendar.getInstance();
	        int year = c.get(Calendar.YEAR);
	        int month = c.get(Calendar.MONTH)+1;
	        int day = c.get(Calendar.DAY_OF_MONTH);
	        
	        System.out.println("YEar "+year);
	        System.out.println("Month "+month);
	        System.out.println("Day "+day);
	        
	        
				System.out.println(shopID);
				
				ArrayList<OrderClass> oDetails = (ArrayList<OrderClass>) shopDBUtil.getDueOrderDetails(year,month);
				request.setAttribute("oDetails", oDetails);
				
				int OID = 0;
				
				for(OrderClass o : oDetails) {
					OID = o.getOrderID();
					System.out.println(OID);
				}
				
					if(OID == 0) {
						System.out.println("No result");
						request.setAttribute("msg2", "No results");
					}
				
				request.setAttribute("shopID", shopID);
				
				//navigate to Shop's order details page 
				RequestDispatcher dis = request.getRequestDispatcher("ShopHome.jsp");
				dis.forward(request, response);
		
	}

}
