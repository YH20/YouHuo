package com.youhuo.web.servlet.youhuo_user.ofy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.pojo.User;
import com.youhuo.service.UserService;
import com.youhuo.service.serviceImpl.UserServiceImpl;
import com.youhuo.util.StringHelper;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name ="login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("username");
		String pass=request.getParameter("logpassword");
//		md5加密
		pass=StringHelper.MD5(pass);
		UserService dao=new UserServiceImpl();
		User users=new User();
		users=dao.loginUser(user, pass);
//	    验证用户是否存在
	    boolean f=dao.selectByUser(user);
//	          用户存在
		   if(f){
				if(users!=null){
					response.sendRedirect("http://localhost:8080/YouHuo/index.jsp");
//					把这个存入seesion//		单态登录
					request.getSession().setAttribute("userssion", users);
				}else{
					 request.setAttribute("loguser", user);
					 request.setAttribute("logpasseer", "密码错误!");
					 request.getRequestDispatcher("/index-login.jsp").forward(request, response);
				}
		   }else{
			   //用户不存在
			    request.setAttribute("loguser", user);
			    request.setAttribute("logno", "用户不存在请注册!");
			    request.getRequestDispatcher("/index-login.jsp").forward(request, response);
		   }    
	       
	    
//		users.getUserName()

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
