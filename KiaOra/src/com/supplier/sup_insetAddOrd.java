package com.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sup_insetAddOrd
 */
@WebServlet("/sup_insetAddOrd")
public class sup_insetAddOrd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		
		try {
		String quantity=request.getParameter("Quantity");
		String amount=(request.getParameter("Amount"));
		String credit_Period=(request.getParameter("Credit_Period"));
		String supplierID =(request.getParameter("SupplierID"));
		String date=(request.getParameter("Date"));
		String SupItems=request.getParameter("ModelID");
	    String status="No";
	    
	    int quantity1=Integer.parseInt(quantity);
	    float amount1=Float.parseFloat(amount);
	    int credit_period1=Integer.parseInt(credit_Period);
	    int supplierID1=Integer.parseInt(supplierID);
	    		
	    
		
	    System.out.println("Error one");
	    
		@SuppressWarnings("unused")
		boolean isTrue;
		isTrue=SupplierDButill.insertAddord(quantity1,amount1,credit_period1,supplierID1,date,SupItems,status) ;
		
		if(isTrue=true) {
			RequestDispatcher dis=request.getRequestDispatcher("supsuccess.jsp");
			dis.forward(request,response);
		}

		else {
			RequestDispatcher dis=request.getRequestDispatcher("supunsuccess.jsp");
			dis.forward(request, response);
		
	}

		}
		catch(Exception e) {
		
			
		}
		
		
		
		
	}
		
		
		
		
		
	}


