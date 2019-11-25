package com.youhuo.test.DaoTest;

import java.sql.Connection;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.dao.AddressDao;
import com.youhuo.dao.impl.AddressDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.Address;
import com.youhuo.util.StringHelper;

public class AddressTest {
	Connection conn = DBHelper.getConnection();
	AddressDao dao = new AddressDaoImpl();
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
		Address address = new Address(1L, "Test1", "10086", "湖南省", "长沙市", "岳麓区", 
				"文轩路延农大厦","432000", 1, StringHelper.getCurrentFormatDate(), "856c727f-b7f4-4782-b154-b05716b28fc8");
		System.out.println(dao.insertAddress(conn, address));
	}
	@Test
	public void delete() {
		Address address = new Address(6L, "Test1", "10086", "湖南省", "长沙市", "岳麓区", 
				"文轩路延农大厦","432000", 1, StringHelper.getCurrentFormatDate(), "856c727f-b7f4-4782-b154-b05716b28fc8");
		System.out.println(dao.deleteAddress(conn, address));
	}
	@Test
	public void selectOne() {
		System.out.println(dao.selectByID(conn, 1L));
	}
	
	@Test
	public void update() {
		Address address = new Address(7L, "修改成功", "10086", "湖南省", "长沙市", "岳麓区", 
				"文轩路延农大厦","432000", 1, StringHelper.getCurrentFormatDate(), "856c727f-b7f4-4782-b154-b05716b28fc8");
		System.out.println(dao.updateAddress(conn, address));
	}
	@Test
	public void selectAll() {
		List<Address> list = dao.selectAll(conn);
		for (Address address : list) {
			System.out.println(address);
		}
	}
}
