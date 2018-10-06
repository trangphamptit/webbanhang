package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietSanPhamDAO;
import model.ChiTietSanPham;

/**
 * Servlet implementation class ChiTietAoQuanController
 */
@WebServlet("/ChiTietAoQuanController")
public class ChiTietAoQuanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietAoQuanController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maSanPham = Integer.parseInt(request.getAttribute("id").toString());
		try {
			ChiTietSanPham ctsp = ChiTietSanPhamDAO.getChiTietSanPhamTheoMa(maSanPham);
			request.setAttribute("sanPham", ctsp);
			RequestDispatcher rd = request.getRequestDispatcher("mens.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND, "Không tìm thấy sản phẩm!");
		}
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
