package com.Repair;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RepairCustomerSearchServlet
 */
@WebServlet("/RepairCustomerSearchServlet")
public class RepairCustomerSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    

    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		//catching data from form
    		String nic = request.getParameter("nic");
    		
    		
    		try {
    			//calling search method
    			List<RepairCustomer> RepairCustomerDetails = RepairCustomerDBUtil.searchCustomer(nic);
    			request.setAttribute("RepairCustomerDetails", RepairCustomerDetails); 
    		} 
    		catch (Exception e) {
    			e.printStackTrace();
    		}

    		//redirecting to the relavent page
    		RequestDispatcher dis = request.getRequestDispatcher("RepairCustomerAccount.jsp");
    		dis.forward(request, response);
    		
    		
    	}

    
}