package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.OrderList;

/**
 * OrderList表操作接口
 * 订单与商品关系表
 * @author sunrise
 *
 */
public interface OrderListDao {
	/**
	 * 增加订单与商品的关系
	 * @param conn
	 * @param orderList
	 * @return
	 */
	public boolean  insertOrderList(Connection conn,OrderList orderList);
	
	/**
	 * 删除订单与商品关系
	 * @param conn
	 * @param orderList
	 * @return
	 */
	public boolean deleteOrderList(Connection conn,OrderList orderList);
	/**
	 * 更新订单与商品关系
	 * @param conn
	 * @param orderList
	 * @return
	 */
	public boolean updateOrderList(Connection conn,OrderList orderList);
	/**
	 * 根据ID查询订单与商品关系
	 * @param conn
	 * @param ord_list_id
	 * @return
	 */
	public OrderList selectByID(Connection conn,long ord_list_id);
	/**
	 * 查询所有订单与商品关系
	 * @param conn
	 * @return
	 */
	public List<OrderList> selectAll(Connection conn);
}
