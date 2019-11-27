package com.youhuo.service.serviceImpl.Dq;

import java.sql.Connection;
import java.sql.SQLException;

import com.youhuo.dao.UserDao;
import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.User;
import com.youhuo.service.Dq.PersonInfoService;
/**
 * 个人中心
 * 查询个人信息实现方法
 * @author DQing
 *
 */
public class PersonInfoServiceImp implements PersonInfoService{
	Connection conn;
	@Override
	public User getUserInfo(String userid) {
		UserDao myself=new UserDaoImpl();
		conn=DBHelper.getConnection();
		User userself=myself.selectByID(conn, userid);
		DBHelper.closeConnection(conn);
		return userself;
	}
}
