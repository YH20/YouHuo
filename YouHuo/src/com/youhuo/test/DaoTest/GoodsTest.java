package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.GoodsDao;
import com.youhuo.dao.impl.GoodsDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.Goods;
import com.youhuo.util.StringHelper;
/**
 * Goods测试完成
 * @author sunrise
 *
 */
public class GoodsTest {
	
	Connection conn = null;
	GoodsDao dao = new GoodsDaoImpl();
	@Before
	public void begin(){
		System.out.println("begin");
		conn = DBHelper.getConnection();
	}
	@After
	public void end(){
		DBHelper.closeConnection(conn);
		System.out.println("end");
	}
	@Test
	public void insert(){
		Goods goods = new Goods(3L, "Mix2s", 0, 99999.50,
				"test", "test", 1, 0, 
				1, 1, StringHelper.getCurrentFormatDate(), null);
		System.out.println(dao.insertGood(conn, goods));
	}
	@Test
	public void delete() {
		Goods goods = new Goods();
		goods.setGId(3L);
		System.out.println(dao.deleteGood(conn, goods));
	}
	@Test
	public void selectOne() {
		Goods goods = dao.selectByID(conn, 3L);
		System.out.println(goods.getGoodsPrice());	
	}
	
	@Test
	public void update() {
		Goods goods = new Goods(1L, "Mix2", 0, 99999.50,
				"test", "test", 1, 0, 
				1, 1, StringHelper.getCurrentFormatDate(), null);
		System.out.println(dao.updateGood(conn, goods));
	}
	@Test
	public void selectAll() {
		List<Goods> list = dao.selectAll(conn);
		for (Goods goods : list) {
			System.out.println(goods);
		}
	}
}
