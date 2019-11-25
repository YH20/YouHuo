package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.User;

/**
 * User表DAO接口
 * @author sunrise
 *
 */
public interface UserDao {
	/**
	 * 增加用户
	 * @param conn
	 * @param user
	 * @return
	 */
	public boolean  insertUser(Connection conn,User user);
	
	/**
	 * 删除用户
	 * @param conn
	 * @param user
	 * @return
	 */
	public boolean deleteUser(Connection conn,User user);
	/**
	 * 更新用户
	 * @param conn
	 * @param user
	 * @return
	 */
	public boolean updateUser(Connection conn,User user);
	/**
	 * 根据ID查询用户
	 * @param conn
	 * @param userid
	 * @return
	 */
	public User selectByID(Connection conn,String userid);
	/**
	 * 查询所有用户
	 * @param conn
	 * @return
	 */
	public List<User> selectAll(Connection conn);
}
