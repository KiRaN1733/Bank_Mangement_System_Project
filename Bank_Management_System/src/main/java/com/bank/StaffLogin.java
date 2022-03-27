package com.bank;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/StaffLogin")
public class StaffLogin extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Connection con = GetCon.getCon();
		PreparedStatement ps;
		ResultSet rs;
		try {
			ps = con.prepareStatement(
					"select *From staff where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			
			rs = ps.executeQuery();
			if(rs.next()){
				out.print("Logged in as "+username);
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
			else{
				out.print("Sorry,Login failed. please try later");
//				RequestDispatcher rd=request.getRequestDispatcher("MyHtml.html");
//				rd.include(request, response);
			}		
			out.close();	
		}catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
