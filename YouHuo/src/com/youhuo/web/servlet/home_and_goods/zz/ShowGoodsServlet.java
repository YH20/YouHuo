package com.youhuo.web.servlet.home_and_goods.zz;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.URIDereferencer;

import com.youhuo.dto.JsonDate;
import com.youhuo.pojo.Goods;
import com.youhuo.service.serviceImpl.zz.GoodsShowServiceImpl;
import com.youhuo.service.zz.GoodsShowService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
/**
 * 展示商品信息
 */

@WebServlet(name = "showGoods", urlPatterns = { "/showGoods" })
public class ShowGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowGoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进入了showGooods");
		String nums = request.getParameter("nums");
		String type = request.getParameter("type");
		int lasttype = Integer.valueOf(type);
		System.out.println("nums=="+nums+"type="+type);
		GoodsShowService service = new  GoodsShowServiceImpl();
		List<Goods> goodsList = service.showGoodsLike(Integer.valueOf(nums), lasttype);
		JsonDate date = new JsonDate();
		date.setCode(0);
		date.setType(lasttype);
		date.setDate(goodsList);
		JSONObject jsonG = JSONObject.fromObject(date);
		//System.out.println(jsonG);
		
		PrintWriter out = response.getWriter();
		
		out.write(jsonG.toString());
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
