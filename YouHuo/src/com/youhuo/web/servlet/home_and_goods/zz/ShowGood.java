package com.youhuo.web.servlet.home_and_goods.zz;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.pojo.Goods;
import com.youhuo.service.serviceImpl.zz.GoodsShowServiceImpl;
import com.youhuo.service.zz.GoodsShowService;
/**
 * 展示商品详情
 */
@WebServlet(name = "showGood", urlPatterns = { "/showGood" })
public class ShowGood extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowGood() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long gid = Long.valueOf(request.getParameter("id"));
		GoodsShowService service = new GoodsShowServiceImpl();
		Goods goods = new Goods();
		goods = service.selectGoodsInfo(gid);
		request.setAttribute("good",goods);
		request.setAttribute("goodsType", service.selectGoodsType(goods.getTypeId()));
		request.getRequestDispatcher("product_information.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
