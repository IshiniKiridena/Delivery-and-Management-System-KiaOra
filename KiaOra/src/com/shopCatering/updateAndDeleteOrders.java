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
 * Servlet implementation class updateAndDeleteOrders
 */
@WebServlet("/updateAndDeleteOrders")
public class updateAndDeleteOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Buttton :"+request.getParameter("update"));
		String ShopID= request.getParameter("shopID");
		
		
		if (request.getParameter("update")  != null) {
			
			
			
			String orderID= request.getParameter("update");
			
			

			System.out.println("OrderID "+orderID );

			ArrayList<OrderClass> selectedOrderDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderDetailsbyOrderID(orderID);
			request.setAttribute("selectedOrderDetails", selectedOrderDetails);
			
			request.setAttribute("UpdateOrder", "Update Order");
			request.setAttribute("Button","Update");
			
			RequestDispatcher dis = request.getRequestDispatcher("shopOrderUpdate.jsp");
			dis.forward(request,response);
			
		}
		
		else if (request.getParameter("deleteOrders")  != null) {
			
			
			//delete shops's completed orders
			boolean isTrue2 =  shopDBUtil.deleteOrders(ShopID);
				
			if(isTrue2 == true) {
			
				request.setAttribute("successfulMsg", "Completed Orders has been deleted successfully");				
				request.setAttribute("shopID", ShopID);
				
				ArrayList<OrderClass> oDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderdetailsOfShop(ShopID);
				request.setAttribute("oDetails", oDetails);
				
				//navigate to Shop's order details page 
				RequestDispatcher dis = request.getRequestDispatcher("shopOrders.jsp");
				dis.forward(request, response);
			
			}
			else {
				System.out.println("Failed");
			}

			
		}
		
			
		
	}

}
