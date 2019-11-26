package com.youhuo.web.servlet.user_center.dq;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import com.youhuo.util.Address;

/**
 * 地址查询Servlet
 * @author DQing
 * Servlet implementation class addressServelt
 */
@WebServlet(name = "address", urlPatterns = { "/dqaddress" })
public class addressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进入三级联动地址Servlet");
		String proname1 = request.getParameter("province");
		String cityname1 = request.getParameter("city");
		System.out.println("打印前端传来的省："+proname1+"市city:"+cityname1);
		if (cityname1==null) {
			cityname1="";
		}
		System.out.println("处理前端传来的省："+proname1+"市city:"+cityname1);
		Address adress=new Address();
		List list=adress.getAdress(proname1, cityname1);
		JSONArray jsonArray = JSONArray.fromObject(list);// 将List转化成json数组传到前台
		response.getOutputStream().write(jsonArray.toString().getBytes("utf-8"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
