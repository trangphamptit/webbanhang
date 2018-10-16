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
 * Servlet implementation class CheckOutController
 */
@WebServlet("/checkout")
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int maSanPham = Integer.parseInt(request.getParameter("id"));
//		System.out.println(maSanPham);
//		try {
//			ChiTietSanPham ctsp = ChiTietSanPhamDAO.getChiTietSanPhamTheoMa(maSanPham);
//			request.setAttribute("sanPham", ctsp);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		while(request.getAttributeNames().hasMoreElements()) {
			System.out.println(request.getAttributeNames().nextElement());
		}
//		RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
//		rd.forward(request, response);
	}

}
