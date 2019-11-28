package com.youhuo.web.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import com.youhuo.pojo.User;

public class LoginSessionListener implements HttpSessionAttributeListener {
//	得到所有session存入
	Map<String,HttpSession> map=new HashMap<String, HttpSession>();
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
//		登录成功获得session存入的key中
//		如果登录成功就把值存入
		String name=arg0.getName();
//		登录成功了
		if(name.equals("userssion")){
			User usersvalue=(User)arg0.getValue();
			if(map.get(usersvalue.getUserName())!=null){
//				如果map里有记录，表明登录成功，将登录挤出
//				拿出原来的session
				HttpSession session=map.get(usersvalue.getUserName());
//				拿到已经存在的旧的信息 移除
				User olduserssion=(User)session.getAttribute("userssion");
				session.removeAttribute("userssion");
			} 
//			   将session以用户名为为索引，放入map中 用户已经登陆了
			 map.put(usersvalue.getUserName(), arg0.getSession());
			 
		  
		}
		
		
		
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		String name=arg0.getName();
//		注销掉
		if(name.equals("userssion")){
//			将该session从map中移除
			User uservalue=(User)arg0.getValue();
			map.remove(uservalue);
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		String name=arg0.getName();
		if(name.equals("userssion")){
//			移除旧的登录登录信息
			User olduservalue=(User)arg0.getValue();
			// 新的登录信息
			User uservalue = (User) arg0.getSession().getAttribute("userssion");
			if(map.get(uservalue.getUserName())!=null){
				HttpSession session = map.get(uservalue.getUserName());
				session.removeAttribute("userssion");
				session.setAttribute("downlogin", "您的账号被迫下线。");
			}
			map.put(uservalue.getUserName(), arg0.getSession());
		}
	}

}
