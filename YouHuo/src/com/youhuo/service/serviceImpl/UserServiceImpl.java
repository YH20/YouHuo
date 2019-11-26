package com.youhuo.service.serviceImpl;


import com.youhuo.dao.UserDao;
import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.User;
import com.youhuo.service.UserService;

public class UserServiceImpl implements UserService{
	UserDao dao =new UserDaoImpl();
	@Override
	public boolean addUser(User user){
	   boolean flag= false;
	   flag=dao.insertUser(DBHelper.getConnection(), user);
	   return flag;
	}
   
}
