package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String option = request.getParameter("action");
		PrintWriter out = response.getWriter();
		if(option.equals("demo")){
			String name = request.getParameter("empName");
			out.write("Hello "+name);
		}else{
			int no1 = Integer.parseInt(request.getParameter("number1"));
			int no2 = Integer.parseInt(request.getParameter("number2"));
			out.write((no1+no2)+"");
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
