package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.OrderInfo;

/**
 * OrderInfo表操作接口
 * 订单信息表
 * @author sunrise
 *
 */
public interface OrderInfoDao {
	/**
	 * 增加订单
	 * @param conn
	 * @param orderInfo
	 * @return
	 */
	public boolean  insertOrderInfo(Connection conn,OrderInfo orderInfo);
	
	/**
	 * 删除订单
	 * @param conn
	 * @param orderInfo
	 * @return
	 */
	public boolean deleteOrderInfo(Connection conn,OrderInfo orderInfo);
	/**
	 * 更新订单
	 * @param conn
	 * @param orderInfo
	 * @return
	 */
	public boolean updateOrderInfo(Connection conn,OrderInfo orderInfo);
	/**
	 * 根据ID查询订单
	 * @param conn
	 * @param ord_id
	 * @return
	 */
	public OrderInfo selectByID(Connection conn,long ord_id);
	/**
	 * 查询所有订单
	 * @param conn
	 * @return
	 */
	public List<OrderInfo> selectAll(Connection conn);
}
