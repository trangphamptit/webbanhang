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
	
	private String renderViewMore(int maNhom) {
		String link = "men.jsp";
		if(maNhom >= 8) {
			link = "women.jsp";
		}
		String str = "<div class=\"item\">\r\n" + 
				"							<div class=\"product-men p-3 text-center\">\r\n" + 
				"								<img src=\"images/p2.png\" class=\"img-responsive\" alt=\"\" /> <a\r\n" + 
				"									href=" + link + " class=\"btn btn-lg bg-info text-white\">view\r\n" + 
				"									more</a>\r\n" + 
				"							</div>\r\n" + 
				"						</div>";
		return str;
	}
	
	private String renderCard(ChiTietSanPham ctsp){
		String str = 
				"		<!-- card -->\r\n" + 
				"		<div class=\"card product-men p-3\">\r\n" + 
				"			<div class=\"men-thumb-item\">\r\n" + 
				"				<img src="+ ctsp.getHinhAnh() + " alt=\"img\"\r\n" + 
				"					class=\"card-img-top\">\r\n" + 
				"				<div class=\"men-cart-pro\">\r\n" + 
				"					<div class=\"inner-men-cart-pro\">\r\n" + 
				"						<a href=Detail?id=" + ctsp.getMaSanPham() + "\r\n" + 
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
				"				<form action=\"#\" method=\"post\">\r\n" + 
				"					<input type=\"hidden\" name=\"cmd\" value=\"_cart\"> <input\r\n" +
				"						type=\"hidden\" name=\"href\" value=\"Detail?id=" + ctsp.getMaSanPham() + "\"> <input\r\n" +
				"						type=\"hidden\" name=\"add\" value=\"1\"> <input\r\n" + 
				"						type=\"hidden\" name=\"item_number\" value=" + ctsp.getMaSanPham() + "> <input\r\n" + 
				"						type=\"hidden\" name=\"id\"\r\n" + 
				"						value=" + ctsp.getMaSanPham() + "> <input\r\n" + 
				"						type=\"hidden\" name=\"hub_item\"\r\n" + 
				"						value=\""+ ctsp.getTenSanPham() + "\"> <input\r\n" + 
				"						type=\"hidden\" name=\"amount\"\r\n" + 
				"						value="+ ctsp.getGiaGiam()+">\r\n" + 
				"					<button type=\"submit\" class=\"hub-cart phub-cart btn\">\r\n" + 
				"						<i class=\"fa fa-cart-plus\" aria-hidden=\"false\"></i>\r\n" + 
				"					</button>\r\n" + 
				"					<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\"></a>\r\n" + 
				"				</form>\r\n" + 
				"			</div>\r\n" + 
				"		</div>\r\n" + 
				"		<!-- //card -->\r\n";
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
				if(request.getHeader("referer").indexOf("/men.jsp") > -1 || request.getHeader("referer").indexOf("/women.jsp") > -1) {
					response.getWriter().print("<div class=\"col-lg-3 col-sm-6 p-0\">");
					response.getWriter().print(renderCard(ctsp));
					response.getWriter().print("</div>");
				}
				else{
					response.getWriter().print("<div class=\"item\">");
					response.getWriter().print(renderCard(ctsp));
					response.getWriter().print("</div>");
				}
			}
			if(request.getHeader("referer").indexOf("/index.jsp") > -1) {
				response.getWriter().print(renderViewMore(maNhom));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
