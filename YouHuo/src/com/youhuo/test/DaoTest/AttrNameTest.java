package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.AttrNameDao;
import com.youhuo.dao.impl.AttrNameDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.AttrName;
/**
 * 属性名表操作测试
 * 完成
 * @author sunrise
 *
 */
public class AttrNameTest {
	
	AttrNameDao dao = new AttrNameDaoImpl();
	Connection conn = DBHelper.getConnection();
	@Before
	public void begin(){
		System.out.println("begin");
	}
	@After
	public void end(){
		DBHelper.closeConnection(conn);
		System.out.println("end");
	}
	@Test
	public void insert(){
		AttrName attrName = new AttrName(11, "Test1", 1, 0);
		System.out.println(dao.insertAttrName(conn, attrName));
	}
	@Test
	public void delete() {
		AttrName attrName = new AttrName(11, "Test1", 1, 0);
		System.out.println(dao.deleteAttrName(conn, attrName));
	}
	@Test
	public void selectOne() {
		System.out.println(dao.selectByID(conn, 11));
	}
	
	@Test
	public void update() {
		AttrName attrName = new AttrName(11, "Test3", 1, 0);
		System.out.println(dao.updateAttrName(conn, attrName));
	}
	@Test
	public void selectAll() {
		List<AttrName> list = dao.selectAll(conn);
		for (AttrName attrName : list) {
			System.out.println(attrName);
		}
	}
}
