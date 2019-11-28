package com.youhuo.web.servlet.user_center.dq;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.pojo.User;
import com.youhuo.service.Dq.PersonInfoService;
import com.youhuo.service.serviceImpl.Dq.PersonInfoServiceImp;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class Self_Info
 */
@WebServlet(name = "mynfo", urlPatterns = { "/myinfo" })
public class Self_Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Self_Info() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("调用查询个人信息的Servlet");
		String userid=request.getParameter("myid");
		PersonInfoService myinfo=new PersonInfoServiceImp();
		User myin=myinfo.getUserInfo(userid);
		Map<String, Object> info=new HashMap<String, Object>();
		int levelnum=myin.getUserType();
		info.put("userphoto", myin.getUserImg());//头像
		info.put("username", myin.getUserName());//名字
		info.put("userphone", myin.getPhone());//电话
		info.put("userlevel", levelnum);//会员等级
		String level = null;
		switch (levelnum){
	      case 1:level="白银会员"; break;
	      case 2:level="黄金会员";break;
	      case 3:level="铂金会员";break;
	      case 999:level="管理员";break;
	      default :break;
		}
		System.out.println("等级： "+level);
		info.put("level", level);//会员等级
		System.out.println("info.toString()--->"+info.toString());
		//map集合转换为JSON对象
		JSONObject result = JSONObject.fromObject(info);
		//将JSON对象传递给前端AJAX接收
		response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
