package com.youhuo.test.zztest;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.youhuo.service.serviceImpl.zz.GoodsShowServiceImpl;
import com.youhuo.service.zz.GoodsShowService;


public class GoodsServiceTest {
	@Before
	public void begin(){
		System.out.println("begin");
	}
	@After
	public void end(){
		System.out.println("end");
	}
	
	@Test
	public void selectAll() {
		GoodsShowService service = new GoodsShowServiceImpl();
		System.out.println(service.showGoodsLike(5, 3));
	}
}
