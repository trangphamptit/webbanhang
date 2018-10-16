package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsersDAO;
import model.Users;
import sun.security.provider.MD5;

/**
 * Servlet implementation class UsersServlet
 */
@WebServlet("/Users")
public class UsersServlet extends HttpServlet {
	UsersDAO usersDAO = new UsersDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	      String command = request.getParameter("command");
	        String url = "";
	        Users users = new Users();
	        HttpSession session = request.getSession();
	        switch (command) {
	            case "insert":
	                users.setUser_id(new java.util.Date().getTime());
	                users.setUser_email(request.getParameter("email"));
	                users.setUser_pass(request.getParameter("pass"));
	                users.setUser_role(false);
	                usersDAO.insertUser(users);
	                session.setAttribute("user", users);
	                url = "/index.jsp";
	                break;
	           
	        }
	        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	        rd.forward(request, response);
	}

}
