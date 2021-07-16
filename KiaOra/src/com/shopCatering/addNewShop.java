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
 * Servlet implementation class addNewShop
 */
@WebServlet("/addNewShop")
public class addNewShop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				//get last id from the shop table
					String lastId =  shopDBUtil.getlastPIDno();
					
					LastNoClass l1 = new LastNoClass(lastId);//last digit in shop table's id
					l1.split();
					String shopID ="SH"+(l1.getLastNo()+1);//shopID
		

				//get data from the form
				String Shopname = request.getParameter("shopName");
				String Ownername = request.getParameter("ownerName");
				String addressLine1 = request.getParameter("shopAddress");
				
				
				String addressStreet = request.getParameter("shopStreet");
				String addressCity= request.getParameter("shopCity");
				String email = request.getParameter("email");
				String getphone = request.getParameter("phone"); 
				int phone=Integer.parseInt(getphone);
				
				//get current date
				long currentDate=System.currentTimeMillis();  
				java.sql.Date date=new java.sql.Date(currentDate);  
				System.out.println(date); 
				
				//get route id by street
				int routeid = shopDBUtil.getRouteID(addressStreet);
				
				boolean isTrue1,isTrue2,isTrue3;
				
				isTrue1 = shopDBUtil.validateEmail(email);
				
				if(isTrue1 == false) {//check if the entered email is already exist in the db
					
					isTrue2 = shopDBUtil.validatePhone(phone);
					
					if(isTrue2 == false) {//check if the entered email is already exist in the db
					
						//send to database through a modle
						isTrue3 = shopDBUtil.insertShop(shopID,Shopname,Ownername,addressLine1,addressStreet,addressCity,email,date,phone,routeid);
						
						//if the insertion is success
						if(isTrue3 == true) {
							System.out.println(shopID);
							System.out.println("Added shop to the db");
							//retrieve shop details		
							
							ArrayList<ShopClass> sDetails =  shopDBUtil.getShopdetails(shopID);
							request.setAttribute("sDetails", sDetails);
							
							
							//navigate to Shop Profile 
							RequestDispatcher dis = request.getRequestDispatcher("shopprofile.jsp");
							dis.forward(request, response);
						}
						
						//if the insertion is unsuccess
						else {
							
							//else redirect to the registration form again
							System.out.println("Shop cannot be added to the db");
							request.setAttribute("errorMsg", "An error occurred please try again.");
							
							RequestDispatcher dis3 = request.getRequestDispatcher("shopRegister.jsp");
							dis3.forward(request, response);
						}
						
						
					}
					
					else {
						//else redirect to the registration form again
						System.out.println("Shop cannot be added to the db");
						request.setAttribute("errorMsg", "The entered Phone Number is already exist in the system.\n Please try again.");
						
						RequestDispatcher dis3 = request.getRequestDispatcher("shopRegister.jsp");
						dis3.forward(request, response);
					}
				
				}
				
				else {
					
					//else redirect to the registration form again
					System.out.println("Shop cannot be added to the db");
					request.setAttribute("errorMsg", "The entered email is already exist in the system.\n Please try again.");
					
					RequestDispatcher dis3 = request.getRequestDispatcher("shopRegister.jsp");
					dis3.forward(request, response);
					
				}
				
	
	
	
	}

}
