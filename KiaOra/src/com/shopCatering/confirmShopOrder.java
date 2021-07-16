package com.shopCatering;

import java.io.IOException;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class confirmShopOrder
 */
@WebServlet("/confirmShopOrder")
public class confirmShopOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("Buttton :"+request.getParameter("Button"));


		String modelID= request.getParameter("mid");
		String shopID= request.getParameter("shopID");
		int creditPeriod= Integer.parseInt(request.getParameter("creditPeriod"));
		double totPrice= Double.parseDouble(request.getParameter("totPrice"));
		double amountPaid=Double.parseDouble(request.getParameter("paidAmount"));
		String date= request.getParameter("date");
		String unitPrice= request.getParameter("unitPrice");
		String quantity= request.getParameter("quantity");
		String status = "";
		
	//Confirm Button Clicked	
			if(request.getParameter("Button").equalsIgnoreCase("Confirm")) {
				
				if(amountPaid <= totPrice) {//check whether the inserted amount is greater than the total amount 
			
					
					String Placed_date= request.getParameter("date");
					
					//get Due Date
					LocalDate dueDate = LocalDate.now().plusMonths(creditPeriod);
					System.out.println(dueDate);
					
					
					//check whether the payment is complete or not
					if(totPrice - amountPaid == 0) {
						
						status = "Paid";
					}
					else
						status = "PartialPaid";
					
					//insert data into the db
					boolean isTrue = shopDBUtil.insertNewOrder(modelID,dueDate,amountPaid,creditPeriod,totPrice,unitPrice,status,quantity,Placed_date,shopID);
					
					//check whether the insertion is success or not
					if(isTrue == true) {
						System.out.println("Success");
						
						boolean isTrue2 = shopDBUtil.deductStock(modelID,quantity);
						
						if(isTrue2 == true) {
							//retrieve order details		
							ArrayList<OrderClass> oDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderdetailsOfShop(shopID);
							request.setAttribute("oDetails", oDetails);
							
							for(OrderClass o : oDetails) {
								System.out.println(o.getOrderID());
							}
							
							
							
							//navigate to Shop's order details page 
							
							request.setAttribute("shopID",shopID);
							request.setAttribute("successfulMsg", "A new order has been placed succefully! ");
							
							RequestDispatcher dis = request.getRequestDispatcher("shopOrders.jsp");
							dis.forward(request, response);
							
							
						}
						else
						{
							System.out.println("Can not reduce the quantity from the stock");
						}
					}
					else {
						
						//the inseration failed 
						
						request.setAttribute("errorMsg", "An error occured.");
						
						//set attributes 
						request.setAttribute("modelID",modelID);
						request.setAttribute("OrderingQuantity",quantity);
						request.setAttribute("unitPrice",unitPrice);
						request.setAttribute("totPrice",totPrice);
						request.setAttribute("creditPeriod",creditPeriod);
						request.setAttribute("shopID",shopID);
						request.setAttribute("date",date);
						request.setAttribute("Button","Confirm");
						
						//navigate to confirm order form
						RequestDispatcher dis = request.getRequestDispatcher("shopOrderConfirm.jsp");
						dis.forward(request, response);
						
					}
					
				}
				else {
					//the inserted amount is greater than the total amount 
					
					request.setAttribute("errorMsg", "The inserted amount is greate than the Total amount.\n Please try Again.");
					
					//set attributes 
					request.setAttribute("modelID",modelID);
					request.setAttribute("OrderingQuantity",quantity);
					request.setAttribute("unitPrice",unitPrice);
					request.setAttribute("totPrice",totPrice);
					request.setAttribute("creditPeriod",creditPeriod);
					request.setAttribute("shopID",shopID);
					request.setAttribute("date",date);
					request.setAttribute("Button","Confirm");
					
					//navigate to confirm order form
					RequestDispatcher dis = request.getRequestDispatcher("shopOrderConfirm.jsp");
					dis.forward(request, response);
				}
			
			}
			
			
//Update Button Clicked				
			else if(request.getParameter("Button").equalsIgnoreCase("Update")) {
				String orderID= request.getParameter("orderID");
				double remainingCost=  Double.parseDouble(request.getParameter("remainingCost"));
				
				
					if(amountPaid <= remainingCost) {//check whether the inserted amount is greater than the remaining amount 
				
						
						LocalDate updatedDate = LocalDate.now();//get current date
						
						if(remainingCost - amountPaid == 0) 
							status = "Paid";
						else if(remainingCost - amountPaid > 0 )
							status = "PartialPaid";
						else {
							RequestDispatcher dis3 = request.getRequestDispatcher("shopOrderUpdate.jsp");
							dis3.forward(request, response);
						}
						
						boolean isTrue2 = shopDBUtil.updateSelectedOrder(orderID,amountPaid,creditPeriod,status,updatedDate);
						
						//check whether the update is success or not
						if(isTrue2 == true) {
							System.out.println("Success");
							
							
							if(status.equals("Paid")) {
								
								//insert to monthly payment table
								shopDBUtil.insertMonthlyProfit(Integer.parseInt(orderID),modelID,totPrice,quantity,updatedDate.toString(),totPrice);
						
						}
							
							//retrieve order details		
							ArrayList<OrderClass> oDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderdetailsOfShop(shopID);
							request.setAttribute("oDetails", oDetails);
							
							for(OrderClass o : oDetails) {
								System.out.println(o.getOrderID());
							}
							
							request.setAttribute("shopID", shopID);
							request.setAttribute("successfulMsg", "Succesfully updated order details! ");
							
							//navigate to Shop's order details page 
							RequestDispatcher dis = request.getRequestDispatcher("shopOrders.jsp");
							dis.forward(request, response);
						}
						else {
							//else redirect to shopOrderConfirm page again
							RequestDispatcher dis3 = request.getRequestDispatcher("shopOrderUpdate.jsp");
							dis3.forward(request, response);
						}
					}
					
					
					else {
						request.setAttribute("errorMsg", "The inserted amount is greate than the Remaining amount.\n Please try Again.");
						request.setAttribute("UpdateOrder", "Update Order");
						request.setAttribute("Button","Update");
						
						ArrayList<OrderClass> selectedOrderDetails = (ArrayList<OrderClass>) shopDBUtil.getOrderDetailsbyOrderID(orderID);
						request.setAttribute("selectedOrderDetails", selectedOrderDetails);
						
						RequestDispatcher dis3 = request.getRequestDispatcher("shopOrderUpdate.jsp");
						dis3.forward(request, response);
						
					}
					
			}
		
	}

}
