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
 * Servlet implementation class updateShop
 */
@WebServlet("/updateShop")
public class updateShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//get details from the view and store them on variables
		String id1 = request.getParameter("id1");
		String shopname1 = request.getParameter("shopname1");
		String ownername1 = request.getParameter("ownername1");
		String addressLine11 = request.getParameter("addressLine11");
		String addressStreet1 = request.getParameter("addressStreet1");
		String addressCity1 = request.getParameter("addressCity1");
		String email1 = request.getParameter("email1");
		String phone1= request.getParameter("phone1");
		String registeredDate1 = request.getParameter("registeredDate1");
			
		System.out.println(addressStreet1);
		
		int routeid = shopDBUtil.getRouteID(addressStreet1);
				
				boolean result;
				
				
				//send data which needs to updated
				result = shopDBUtil.updateShop(id1, shopname1, ownername1, email1, addressLine11,addressStreet1, addressCity1,email1,phone1,registeredDate1,routeid);
			
				
				
				//if the process is correct
				if(result == true) {
					//navigate to shop profile
					ArrayList<ShopClass> sDetails =  shopDBUtil.getShopdetails(id1);
					request.setAttribute("sDetails", sDetails);

					for(ShopClass o:sDetails) {
						System.out.println(o.getId());
						System.out.println(o.getEmail());
					}
					
					
					
					request.setAttribute("successfulMsg", "Succesfully updated shop details! ");
					
					for(ShopClass o:sDetails) {
						System.out.println(o.getId());
						System.out.println(o.getEmail());
					}
					
					
					//navigate to shop Profile 
					RequestDispatcher dis = request.getRequestDispatcher("shopprofile.jsp");
					dis.forward(request, response);
				}
			
				else
				{
					//if the result is false
					request.setAttribute("credential_error", "An error occurred please try again!");
					System.out.println("Unsuccessful update!");
					
					RequestDispatcher dis = request.getRequestDispatcher("shopUpdate.jsp");
					dis.forward(request, response);
				}
				
	}

}
