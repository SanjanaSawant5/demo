package com.test.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/AdminServlet")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		 if(username.equals("admin") && password.equals("admin")) {
	            //request.getSession().setAttribute("username", username);
	            RequestDispatcher rd = request.getRequestDispatcher("ParkingPortal.jsp");
				rd.forward(request, response);
	        }else {
				response.sendRedirect("Error.jsp");
			}
	}

}
