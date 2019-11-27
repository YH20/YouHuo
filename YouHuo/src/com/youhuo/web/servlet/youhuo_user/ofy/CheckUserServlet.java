package com.youhuo.web.servlet.youhuo_user.ofy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.service.UserService;
import com.youhuo.service.serviceImpl.UserServiceImpl;

/**
 * 
 * 失去焦点验证用户是否存在
 * Servlet implementation class CheckUserServlet
 */
//@WebServlet(name = "checkcode", urlPatterns = { "/checkcode" })
@WebServlet(name = "checkUserServlet", urlPatterns = { "/checkUserServlet" })
public class CheckUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter outjs=response.getWriter();
		String users=request.getParameter("checkuser");
	    UserService dao=new  UserServiceImpl();
	    boolean f=false;
		f=dao.selectByUser(users);
//		response.setHeader("Content-Type", "application/json;charset=utf-8");
//		设置标记
//		成功
		String a="200";
		String b="0";
	    if(f){
	         outjs.print(a);
	    }else{
	    	outjs.print(b);
	    }
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
