package com.youhuo.web.servlet.youhuo_user.ofy;

import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.pojo.ShoppingCar;
import com.youhuo.pojo.User;
import com.youhuo.service.UserService;
import com.youhuo.service.serviceImpl.UserServiceImpl;
import com.youhuo.util.StringHelper;

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
//	     用户的uuid
	   String useeid=StringHelper.getUUID();
//	   用户里的购物车
	   Long usercar=0L;
//	 
//	   用户头像
	   String img=request.getParameter("content");
	   String photo=null;
	   String users=request.getParameter("registeruser");
	   String pass=request.getParameter("registerpass");
	   String poseone=request.getParameter("registerpose");
	   int pose=Integer.parseInt(poseone);
	   String anwer=request.getParameter("registeranswer");
	   String cilentCode=request.getParameter("registercode");
	   String serverCode=request.getSession().getAttribute("getCode").toString();
//	        如果头像为空就用默认头像
	   if(img=="") {
////	    如果 获得默认图片 获得服务器里
		  String path = this.getServletContext().getRealPath("/")+"dq_img/bg1.gif";
//			读到当前服务器的路径的文件
		  FileInputStream fis=new FileInputStream(path);
//		  准备一个byte[]
		  byte[] b=new byte[fis.available()];
		  fis.read(b);
		  photo=StringHelper.ImageB64Decoder.base64Encode(b);
	 }else{
//	   截取图片格式
//	   截取拿到base64
	     System.out.println(img);
	     int index=img.indexOf(",");
	     int index1=img.indexOf(";");
	     photo=img.substring(index+1);
//	   截取图片格式
	     String path=img.substring(1,index1+1);
	     int indexpath=path.indexOf("/");
	     String p=path.substring(indexpath+1);
         StringBuilder sb=new StringBuilder(p);
         photo=sb.append(photo).toString();
	 }
//	     密码加密后
	    pass=StringHelper.MD5(pass);
//	    先判断验证码是否正确正确插入数据
	    if(serverCode.equalsIgnoreCase(cilentCode)){
//	    	增加用户
	    	User user=new User();
	    	System.out.println("UUID====第一次"+useeid);
	    	user.setId(useeid);
	    	user.setCarId(usercar);
	    	user.setUserName(users);
	    	user.setUserPass(pass);
	    	user.setQuestionId(pose);
	    	user.setQuestionAnswer(anwer);
//	    	设置为普通用户
	    	user.setUserType(1);
	    	user.setUserBirthday("0");
	    	user.setEmail("0");
	    	user.setPhone("0");
	    	user.setNewvalue("0");
	    	user.setUserImg(photo);
	    	
	    	
//	    	创建购物车
	    	ShoppingCar shoppingcar=new ShoppingCar();
	    	shoppingcar.setListId(0L);
	    	System.out.println("UUID====第二次"+useeid);
	    	shoppingcar.setUserId(useeid);
	    	shoppingcar.setValue(null);
	    	boolean flag=false;
	    	flag=dao.addUser(user, shoppingcar);
	    	//System.out.println("对象是"+user);
	    	System.out.println("======"+users);
	    	System.out.println(pass);
	    	if(flag){
	    		response.sendRedirect("index-login.jsp");
	    		System.out.print("注册成功");
	    		
	    	}else{
	    		response.sendRedirect("index-register.jsp");
	    		System.out.print("注册失败");
	    	}
	    	
		}else{
			request.getSession().setAttribute("mesg", "验证码错误!");
			response.sendRedirect("index-register.jsp");
			System.out.print("验证码错误!");
//			验证码错误
		    
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
