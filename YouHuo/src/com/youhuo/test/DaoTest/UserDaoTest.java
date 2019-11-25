package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.UserDao;
import com.youhuo.dao.impl.UserDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.User;
import com.youhuo.util.StringHelper;

/**
 * UserDao测试
 * @author sunrise
 * 完成
 */
public class UserDaoTest {
	
	UserDao dao = new UserDaoImpl();
	Connection conn = null;
	@Before
	public void begin(){
		System.out.println("begin");
		conn = DBHelper.getConnection();
	}
	@After
	public void end(){
		System.out.println("end");
	}
	@Test
	public void insertUserTest(){
		String id = StringHelper.getUUID();
		String userPass = StringHelper.MD5("123456");
		String userBirthday = StringHelper.getCurrentFormatDate();
		User user = new User(id, "sunrise", userPass, userBirthday, 1, "15173388630", "1169113283@qq.com", 999, 
				"C:\\Users\\sunrise\\Pictures\\iCloud Photos\\Saved Pictures\\head.png", 1, "woaini", 123456L, null,null);
		
		System.out.println(dao.insertUser(conn, user));;
	}
	@Test
	public void deleteUserTest() {
		User user = new User();
		user.setId("7b21b45e-86ba-4eaa-8bb1-862d9883dde8");
		System.out.println("===="+dao.deleteUser(conn, user));;
	}
	@Test
	public void selectUserTest() {
		String id = "946f2b35-7582-405b-b95c-50f74a756935";
		System.out.println(dao.selectByID(conn, id));;
	}
	
	@Test
	public void updateUserTest() {
		User user = dao.selectByID(conn, "946f2b35-7582-405b-b95c-50f74a756935");
		System.out.println(user);
		Connection conn1 = DBHelper.getConnection();
		user.setSex(1);
		boolean flag = dao.updateUser(conn1, user);
		System.out.println(flag);
	}
	@Test
	public void selectAll() {
		List<User> list = dao.selectAll(conn);
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
}
