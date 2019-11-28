package com.youhuo.web.servlet.home_and_goods.zz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.dto.JsonDate;
import com.youhuo.pojo.Goods;
import com.youhuo.service.serviceImpl.zz.GoodsShowServiceImpl;
import com.youhuo.service.zz.GoodsShowService;

import net.sf.json.JSONObject;

/**
 * 在商品详情页面推荐商品
 * @author sunrise
 *
 */
@WebServlet(name = "recommendGoods", urlPatterns = { "/recommendGoods" })
public class RecommendGoodsByType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RecommendGoodsByType() {
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsShowService service = new GoodsShowServiceImpl();
		String rec = request.getParameter("recommend");
		String oldnums = request.getParameter("nums");
		int goodstype = Integer.valueOf(request.getParameter("goodstype"));
		int  recommend = 1;
		int nums = 6;
		if(rec!=null) {
			recommend = Integer.valueOf(rec);
		}else {
			
		}
		if(oldnums!=null) {
			nums = Integer.valueOf(oldnums);
		}
		List<Goods> goodsList = service.recommendGoods(goodstype, recommend, nums, true);
		JsonDate date = new JsonDate();
		date.setCode(0);
		date.setDate(goodsList);
		date.setType(0);
		JSONObject jobj = JSONObject.fromObject(date);
		//System.out.println(jobj);
		PrintWriter out = response.getWriter();
		out.write(jobj.toString());
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
