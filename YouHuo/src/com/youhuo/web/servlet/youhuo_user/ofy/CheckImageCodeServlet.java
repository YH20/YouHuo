package com.youhuo.web.servlet.youhuo_user.ofy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.model.core.Ref;

/**
 * Servlet implementation class CheckImageCodeServlet
 */
@WebServlet(name = "checkcode", urlPatterns = { "/checkcode" })
public class CheckImageCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckImageCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		验证码验证
//		获得客户验证传来的验证码
		PrintWriter out1=response.getWriter();
		String cilentCode=request.getParameter("regcode");
		System.out.println("客户端==="+cilentCode);
		String serverCode=request.getSession().getAttribute("getCode").toString();
		System.out.println("服务器==="+serverCode);
		String  a="200";
		String  b="100";
		 response.setCharacterEncoding("UTF-8");
		 response.setHeader("Content-Type", "application/json;charset=utf-8");
		if(serverCode.equalsIgnoreCase(cilentCode)){
			out1.print(a);
//			 sos.write(a);
//			 sos.flush();
//			 sos.close();
		}else{
			out1.print(b);
//			 sos.write(b);
//			 sos.flush();
//			 sos.close();
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
