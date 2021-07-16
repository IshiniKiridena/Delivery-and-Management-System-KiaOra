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
 * Servlet implementation class shopUpdateandDelete
 */
@WebServlet("/shopUpdateandDelete")
public class shopUpdateandDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (request.getParameter("update") != null) {
	        //update button is clicked
			
			
		        	ArrayList<StreetClass> streetList = shopDBUtil.streetlist();
		            request.setAttribute("streetList", streetList);
		 
		            RequestDispatcher dis = request.getRequestDispatcher("shopUpdate.jsp");
					dis.forward(request,response);
		 
		        

	    } else if (request.getParameter("delete") != null) {
	    	 //delete button is clicked
	    	
			//get shop id from the form
			String ShopID= request.getParameter("id");
			System.out.println(ShopID);
			
			//check whether the shop has unpaid orders or not
			boolean isTrue1 =  shopDBUtil.checkNotPaidOrdersAvailbility(ShopID);
			System.out.println("DD :"+isTrue1);
			
				if(isTrue1 == false) {
					//delete shops's completed orders
					boolean isTrue2 =  shopDBUtil.deleteOrders(ShopID);
						
					if(isTrue2 == true) {
							//delete shop from the database
							boolean isTrue3 =  shopDBUtil.deleteShop(ShopID);
							
							//check the delete process is success or not
							if(isTrue3 == true) {
								
								//if the process is sucess navigate to searchShop.jsp page with successful message
								
								System.out.println("Deleted");
								request.setAttribute("successfulMsg", "Shop ID "+ShopID+" has been deleted! ");	
								
								RequestDispatcher dis = request.getRequestDispatcher("shopSearch.jsp");
								dis.forward(request,response);
							}
							
							else
							{
				
								request.setAttribute("errorMsg", "Cannot delete the shop! ");
								RequestDispatcher dis = request.getRequestDispatcher("shopprofile.jsp");
								dis.forward(request,response);
								
								System.out.println("Unsucessful");
							}
							
						}	
					else {
						System.out.println("Order Deletion is Unsucess");
					}
						
			}		
			
			else {
				request.setAttribute("errorMsg", "Error :Unpaid orders are existing ");
				
				//retrieve shop details						
				ArrayList<ShopClass> sDetails =  shopDBUtil.getShopdetails(ShopID);
				request.setAttribute("sDetails", sDetails);
				
				
				RequestDispatcher dis = request.getRequestDispatcher("shopprofile.jsp");
				dis.forward(request,response);
				
				System.out.println("Shop need to complete thier placed orders");
			}
			
	    }
	}

}
