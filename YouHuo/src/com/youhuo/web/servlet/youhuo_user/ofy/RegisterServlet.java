package com.youhuo.web.servlet.youhuo_user.ofy;

import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.service.UserService;
import com.youhuo.service.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(name = "register", urlPatterns = { "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//注册
		UserService dao=new UserServiceImpl();
	   String img=request.getParameter("content");
	   String users=request.getParameter("registeruser");
	   String pass=request.getParameter("registerpass");
	   String pose=request.getParameter("registerpose");
	   String anwer=request.getParameter("registeranswer");
	   String cilentCode=request.getParameter("registercode");
	   String serverCode=request.getSession().getAttribute("getCode").toString();
//	        如果头像为空就用默认头像
	   
	   if (img=="") {
////	    如果 获得默认图片 获得服务器里
		  String path = this.getServletContext().getRealPath("/")+" dq_img/bg1.gif";
//			读到当前服务器的路径的文件
		  FileInputStream fis=new FileInputStream(path);
//		  准备一个byte[]
		  byte[] b=new byte[fis.available()];
		  fis.read(b);
		  String s=new String(b);
		  System.out.println(s);
	 }
	   
//	   dao.addUser();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
