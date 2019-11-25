package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.AttrValueDao;
import com.youhuo.dao.impl.AttrValueDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.AttrValue;

public class AttrValueTest {
	Connection conn = DBHelper.getConnection();
	AttrValueDao dao = new AttrValueDaoImpl();
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
		AttrValue attrValue = new AttrValue(11, "Test", 1);
		System.out.println(dao.insertAttrValue(conn, attrValue));
	}
	@Test
	public void delete() {
		AttrValue attrValue = new AttrValue(6, "Test", 6);
		System.out.println(dao.deleteAttrValue(conn, attrValue));
	}
	@Test
	public void selectOne() {
		System.out.println(dao.selectByID(conn, 10));
	}
	
	@Test
	public void update() {
		AttrValue attrValue = new AttrValue(11, "Test1", 2);
		System.out.println(dao.updateAttrValue(conn, attrValue));
	}
	@Test
	public void selectAll() {
		List<AttrValue> list = dao.selectAll(conn);
		for (AttrValue attrValue : list) {
			System.out.println(attrValue);
		}
	}
}
