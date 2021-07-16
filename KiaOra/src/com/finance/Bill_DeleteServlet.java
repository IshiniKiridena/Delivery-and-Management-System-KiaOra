package com.finance;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Bill_DeleteServlet")
public class Bill_DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//for the unsuceess JS error
		//creating PrintWriter object
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String bill_code = request.getParameter("bill_code");
		
		boolean isDeleted;
		
		isDeleted = BillDBUtil.deleteBill(bill_code);
		
		if(isDeleted == true) {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Bill Deleted successfully!');");
			out.println("location = 'BillSearch.jsp'");
			out.println("</script>");
			
		}
		else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Bill Deletion is not success! Please try again');");
			out.println("'location = 'Bill_Details.jsp'");
			out.println("</script>");
			
			List<Bill> billDetails = BillDBUtil.getBillDetails(bill_code);
			request.setAttribute("billDetails", billDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Bill_Details.jsp");
			dis.forward(request, response);
		}
	}

}
