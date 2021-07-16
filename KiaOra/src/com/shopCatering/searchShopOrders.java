package com.shopCatering;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class searchShopOrders
 */
@WebServlet("/searchShopOrders")
public class searchShopOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String shopID = request.getParameter("shopID");
		
		//check whether the shop is in the system or not
		boolean isTrue1 = shopDBUtil.checkShopavailability(shopID);
		
		if(isTrue1 == true) {//if shop exist
		
				System.out.println(shopID);
				ArrayList<OrderClass> oDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderdetailsOfShop(shopID);
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
				RequestDispatcher dis = request.getRequestDispatcher("shopOrders.jsp");
				dis.forward(request, response);
		}
		
		else {
			//navigate to Shop's order details page 
			
			request.setAttribute("credential_error", "The inserted Shop ID is not existing in the system.");
			
			RequestDispatcher dis = request.getRequestDispatcher("shopsOrderSearch.jsp");
			dis.forward(request, response);
		}
	}

}
