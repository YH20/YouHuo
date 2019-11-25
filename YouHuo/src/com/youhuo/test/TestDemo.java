package com.youhuo.test;

import java.sql.Connection;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.db.DBHelper;

public class TestDemo {
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
		
	}
	@Test
	public void delete() {
		
	}
	@Test
	public void selectOne() {
		
	}
	
	@Test
	public void update() {
		
	}
	@Test
	public void selectAll() {
	
	}
}
