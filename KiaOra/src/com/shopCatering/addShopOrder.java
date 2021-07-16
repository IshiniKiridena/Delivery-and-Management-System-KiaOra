package com.shopCatering;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addShopOrder
 */
@WebServlet("/addShopOrder")
public class addShopOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("addOrder") != null) {
			
			String shopID= request.getParameter("shopID");
			String modelID= request.getParameter("mid");
			
			//check whether the shop is in the system or not
			boolean isTrue1 = shopDBUtil.checkShopavailability(shopID);
			
			if(isTrue1 == true) {//if shop exist
			
					//get data from the form
					int quantity= Integer.parseInt(request.getParameter("OrderingQuantity"));
					double unitPrice= Double.parseDouble(request.getParameter("unitPrice"));
					
						//check whether the entered quantity is greater than existing quantity
						if(Integer.parseInt(request.getParameter("quantity"))< quantity) {
							
							request.setAttribute("errorMsg", "Please enter an appropriate quantity.");
							
							//retrieve selected model details							
							ArrayList<ModelClass> mDetails =  shopDBUtil.getModeldetails(modelID);
							request.setAttribute("mDetails", mDetails);
							
							RequestDispatcher dis3 = request.getRequestDispatcher("shopAddNewOrder.jsp");
							dis3.forward(request, response);
							
						}


					
					//get current date
					LocalDate currentDate = LocalDate.now();			
					System.out.println(currentDate);
					
					int creditPeriod = 0;
					
					//calculate total amount
					double totPrice = unitPrice * quantity;
					
					//get credit period based on the Total price
					if(totPrice >= 10000.00 && totPrice < 50000.00) {
						creditPeriod = 2;
					}
					
					else if(totPrice >= 50000.00 && totPrice < 100000.00) {
						creditPeriod = 3;
					}
					else if(totPrice >= 100000.00) {
						creditPeriod = 9;
					}
					
					//get Due Date
					LocalDate dueDate = LocalDate.now().plusMonths(creditPeriod);
					System.out.println(dueDate);
					
					
					//set attributes 
					request.setAttribute("modelID",request.getParameter("mid"));
					request.setAttribute("OrderingQuantity",request.getParameter("OrderingQuantity"));
					request.setAttribute("unitPrice",request.getParameter("unitPrice"));
					request.setAttribute("totPrice",totPrice);
					request.setAttribute("creditPeriod",creditPeriod);
					request.setAttribute("OrderingQuantity",quantity);
					request.setAttribute("shopID",shopID);
					request.setAttribute("date",currentDate);
					request.setAttribute("Button","Confirm");
					
					//navigate to confirm order form
					RequestDispatcher dis = request.getRequestDispatcher("shopOrderConfirm.jsp");
					dis.forward(request, response);
					
			}
			
			else {
				request.setAttribute("errorMsg", "The inserted Shop ID is not existing in the system.");
				
				//retrieve selected model details							
				ArrayList<ModelClass> mDetails =  shopDBUtil.getModeldetails(modelID);
				request.setAttribute("mDetails", mDetails);
				
				RequestDispatcher dis3 = request.getRequestDispatcher("shopAddNewOrder.jsp");
				//RequestDispatcher dis3 = request.getRequestDispatcher("shopNewOrderSearch.jsp");
				dis3.forward(request, response);
			}
		}
		
		
	}

}
