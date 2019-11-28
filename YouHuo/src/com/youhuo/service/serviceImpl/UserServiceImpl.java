package com.youhuo.service.serviceImpl;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.youhuo.dao.ShoppingCarDao;
import com.youhuo.dao.UserDao;
import com.youhuo.dao.impl.ShoppingCarDaoImpl;
import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.ShoppingCar;
import com.youhuo.pojo.User;
import com.youhuo.service.UserService;
/**
 * 
 * @author ofy
 *
 */

/**
 * 
 * @author ofy
 *增加用户和增加一个购物车
 */
public class UserServiceImpl implements UserService{

	UserDao dao =new UserDaoImpl();
	ShoppingCarDao dao1=new ShoppingCarDaoImpl();
	@Override
	public boolean addUser(User user,ShoppingCar shoppingcar){
	   Connection conn=DBHelper.getConnection();
	   boolean flag= false;
	   boolean flag1= false;
	   try {
		conn.setAutoCommit(false);
		flag1=dao.insertUser(conn, user);
		flag=dao1.insertShoppingCar(conn, shoppingcar);
		//提交数据
		conn.commit();
	} catch (SQLException e) {
		try {
			conn.rollback();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		e.printStackTrace();
	}finally{
		 DBHelper.closeConnection(conn);
	}
	   return flag&&flag1;
	}
	/**
	 * 查询用户是否存在
	 */
	@Override
	public boolean selectByUser(String user) {
		Connection conn=DBHelper.getConnection();
		List<User> list= new ArrayList<User>();
		boolean flag=false;
		list=dao.selectAll(conn);
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getUserName().equals(user)){
				flag=true;
			}
		}
		DBHelper.closeConnection(conn);
		return flag;
	}
	@Override
	public User loginUser(String user, String pass) {
		Connection conn=DBHelper.getConnection();
		List<User> list= new ArrayList<User>();
		  try {
				conn.setAutoCommit(false);
				list=dao.selectAll(conn);
				for (int i = 0; i < list.size(); i++) {
					if(list.get(i).getUserName().equals(user)&&list.get(i).getUserPass().equals(pass)){
						return list.get(i);
					}
				}
				//提交数据
				conn.commit();
			} catch (SQLException e) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				e.printStackTrace();
			}finally{
				 DBHelper.closeConnection(conn);
			}
		
		return null;
	}
   
}
