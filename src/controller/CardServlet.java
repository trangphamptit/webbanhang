package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ChiTietSanPhamDAO;
import model.ChiTietSanPham;

/**
 * Servlet implementation class Card
 */
@WebServlet("/Card")
public class CardServlet extends HttpServlet {
	
	private String renderCard(ChiTietSanPham ctsp){
		String str = "<div class=\"item\">\r\n" + 
				"		<!-- card -->\r\n" + 
				"		<div class=\"card product-men p-3\">\r\n" + 
				"			<div class=\"men-thumb-item\">\r\n" + 
				"				<img src="+ ctsp.getHinhAnh() + " alt=\"img\"\r\n" + 
				"					class=\"card-img-top\">\r\n" + 
				"				<div class=\"men-cart-pro\">\r\n" + 
				"					<div class=\"inner-men-cart-pro\">\r\n" + 
				"						<a href=" + ctsp.getMaSanPham() + "\r\n" + 
				"							class=\"link-product-add-cart\">Quick View</a>\r\n" + 
				"					</div>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"			<!-- card body -->\r\n" + 
				"			<div class=\"card-body  py-3 px-2\">\r\n" + 
				"				<h5 class=\"card-title text-capitalize\"> "+ ctsp.getTenSanPham() + "</h5>\r\n" + 
				"				<div class=\"card-text d-flex justify-content-between\">\r\n" + 
				"					<p class=\"text-dark font-weight-bold\">"+ ctsp.getGiaGiam()+"</p>\r\n" + 
				"					<p class=\"line-through\">" + ctsp.getGia() +"</p>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"			<!-- card footer -->\r\n" + 
				"			<div class=\"card-footer d-flex justify-content-end\">\r\n" + 
				"				<form action=\"Card\" method=\"post\">\r\n" + 
				"					<input type=\"hidden\" name=\"cmd\" value=\"_cart\"> <input\r\n" + 
				"						type=\"hidden\" name=\"add\" value=\"1\"> <input\r\n" + 
				"						type=\"hidden\" name=\"id\"\r\n" + 
				"						value=" + ctsp.getMaSanPham() + "> <input\r\n" + 
				"						type=\"hidden\" name=\"hub_item\"\r\n" + 
				"						value="+ ctsp.getTenSanPham() + "> <input\r\n" + 
				"						type=\"hidden\" name=\"amount\"\r\n" + 
				"						value="+ ctsp.getGiaGiam()+">\r\n" + 
				"					<button type=\"submit\" class=\"hub-cart phub-cart btn\">\r\n" + 
				"						<i class=\"fa fa-cart-plus\" aria-hidden=\"false\"></i>\r\n" + 
				"					</button>\r\n" + 
				"					<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\"></a>\r\n" + 
				"				</form>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		<!-- //card -->\r\n" + 
				"	</div>";
		return str;
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maNhom = Integer.parseInt(request.getParameter("nhom"));
		response.setCharacterEncoding("UTF-8");
		try {
			ArrayList<ChiTietSanPham> cardsDataWomen = ChiTietSanPhamDAO.getCardsData(maNhom);
			for (ChiTietSanPham ctsp : cardsDataWomen) {
				response.getWriter().print(renderCard(ctsp));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maSanPham = Integer.parseInt(request.getParameter("id"));
		System.out.println(maSanPham);
		try {
			ChiTietSanPham ctsp = ChiTietSanPhamDAO.getChiTietSanPhamTheoMa(maSanPham);
			request.setAttribute("sanPham", ctsp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
		rd.forward(request, response);
	}

}
