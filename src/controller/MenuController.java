package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;

import dao.MenuDao;
import model.Menu;

@WebServlet("/MenuController")
public class MenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ArrayList<Menu> menuCha;
	private ArrayList<Menu> menuCon;

	public void renderMenuCha(HttpServletRequest request) {
		menuCha = MenuDao.getMenuCha();
		
	}

	public void renderMenuCon(HttpServletRequest request) {
		
		menuCon = MenuDao.getMenuCon(1);
		JsonConvert converter = new JsonConvert();
        String output = converter.convertToJson(menuCon);
		request.setAttribute("menuCon", output);
	}
	public static void renderMenuCon() {
		ArrayList<Menu> menuCon = MenuDao.getMenuCon(2);
		JsonConvert converter = new JsonConvert();
        String output = converter.convertToJson(menuCon);
        System.out.println(output);
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MenuController() {
		super();
	}
	
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("application/json;charset=UTF-8");
	}
	
	public static void main(String[] args) {
//		renderMenuCon();
	}
}
