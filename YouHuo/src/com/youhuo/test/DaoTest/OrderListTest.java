package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.OrderListDao;
import com.youhuo.dao.impl.OrderListDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.OrderList;

public class OrderListTest {
	Connection conn = DBHelper.getConnection();
	OrderListDao dao = new OrderListDaoImpl();
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
		OrderList orderList = new OrderList(1L, 1L, 1,
				"黑色", "S", 1999.99, 1999.99, 
				1L, "商品主图","商品名称");
		System.out.println(dao.insertOrderList(conn, orderList));
	}
	@Test
	public void delete() {
		OrderList orderList = new OrderList(1L, 1L, 1,
				"黑色", "S", 1999.99, 1999.99, 
				1L, "商品主图","商品名称");
		System.out.println(dao.deleteOrderList(conn, orderList));
	}
	@Test
	public void selectOne() {
		System.out.println(dao.selectByID(conn, 1L));
	}
	
	@Test
	public void update() {
		OrderList orderList = new OrderList(1L, 1L, 1,
				"更新", "S", 1999.99, 1999.99, 
				1L, "商品主图","商品名称");
		System.out.println(dao.updateOrderList(conn, orderList));
	}
	@Test
	public void selectAll() {
		List<OrderList> list = dao.selectAll(conn);
		for (OrderList orderList : list) {
			System.out.println(orderList);
		}
	}
}
