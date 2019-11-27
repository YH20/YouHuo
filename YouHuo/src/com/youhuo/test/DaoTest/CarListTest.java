package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.CarListDao;
import com.youhuo.dao.impl.CarListDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.CarList;
/**
 * 购物车dao完成
 * @author sunrise
 *
 */
public class CarListTest {
	Connection conn = DBHelper.getConnection();
	CarListDao dao = new CarListDaoImpl();
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
		CarList carList = new CarList(1L, 1L, 1, "Test",
				"64G", 1999.99, 1999.99, 1L, "插入图片","商品名称test");
		System.out.println(dao.insertCarList(conn, carList));
	}
	@Test
	public void delete() {
		CarList carList = new CarList(4L, 1L, 10, "白色",
				"64G", 1999.99, 1999.99, 1L, "插入图片","商品名称test");
		System.out.println(dao.deleteCarList(conn, carList));
	}
	@Test
	public void selectOne() {
		System.out.println(dao.selectByID(conn, 1L));
	}
	
	@Test
	public void update() {
		CarList carList = new CarList(1L, 1L, 1, "更新颜色",
				"64G", 1999.99, 1999.99, 1L,"插入图片","商品名称test");
		System.out.println(dao.updateCarList(conn, carList));
	}
	@Test
	public void selectAll() {
		List<CarList> list = dao.selectAll(conn);
		for (CarList carList : list) {
			System.out.println(carList);
		}
	}
}
