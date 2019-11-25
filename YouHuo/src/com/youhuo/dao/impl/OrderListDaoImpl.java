package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.OrderListDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.OrderList;

/**
 * OrderList表操作实现类
 * 订单与商品关系表
 * @author sunrise
 *
 */
public class OrderListDaoImpl implements OrderListDao{
	/**
	 * 增加订单与商品的关系
	 * @param conn
	 * @param orderList
	 * @return
	 */
	@Override
	public boolean insertOrderList(Connection conn, OrderList orderList) {
		/**
		 * 插入8个数据  ID自增
		 */
		String sql = "insert into yh_order_list(goods_id,g_nums,g_color,g_size,g_price,"
					+ "g_subtotal,orderinfo_id,value) values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, orderList.getGoodsId());
			ps.setInt(2, orderList.getGNums());
			ps.setString(3, orderList.getGColor());
			ps.setString(4, orderList.getGSize());
			ps.setDouble(5, orderList.getGPrice());
			ps.setDouble(6, orderList.getGSubtotal());
			ps.setLong(7, orderList.getOrderinfoId());
			ps.setString(8, orderList.getValue());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}
	/**
	 * 删除订单与商品关系
	 * @param conn
	 * @param orderList
	 * @return
	 */
	@Override
	public boolean deleteOrderList(Connection conn, OrderList orderList) {
		String sql = "delete from yh_order_list where ord_list_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, orderList.getOrdListId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	/**
	 * 更新订单与商品关系
	 * @param conn
	 * @param orderList
	 * @return
	 */
	@Override
	public boolean updateOrderList(Connection conn, OrderList orderList) {
		String sql = "update yh_order_list set goods_id=?,g_nums=?,g_color=?,g_size=?,g_price=?," + 
						"g_subtotal=?,orderinfo_id=?,value=? where ord_list_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, orderList.getGoodsId());
			ps.setInt(2, orderList.getGNums());
			ps.setString(3, orderList.getGColor());
			ps.setString(4, orderList.getGSize());
			ps.setDouble(5, orderList.getGPrice());
			ps.setDouble(6, orderList.getGSubtotal());
			ps.setLong(7, orderList.getOrderinfoId());
			ps.setString(8, orderList.getValue());
			ps.setLong(9, orderList.getOrdListId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}	
	/**
	 * 根据ID查询订单与商品关系
	 * @param conn
	 * @param ord_list_id
	 * @return
	 */
	@Override
	public OrderList selectByID(Connection conn, long ord_list_id) {
		String sql = "select * from yh_order_list where ord_list_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		OrderList orderList = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, ord_list_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				orderList = new OrderList();
				orderList.setOrdListId(rs.getLong("ord_list_id"));
				orderList.setGoodsId(rs.getLong("goods_id"));
				orderList.setGNums(rs.getInt("g_nums"));
				orderList.setGColor(rs.getString("g_color"));
				orderList.setGSize(rs.getString("g_size"));
				orderList.setGSubtotal(rs.getDouble("g_price"));
				orderList.setGPrice(rs.getDouble("g_subtotal"));
				orderList.setOrderinfoId(rs.getLong("orderinfo_id"));
				orderList.setValue(rs.getString("value"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return orderList;
	}
	/**
	 * 查询所有订单与商品关系
	 * @param conn
	 * @return
	 */
	@Override
	public List<OrderList> selectAll(Connection conn) {
		String sql = "select * from yh_order_list";
		List<OrderList>  list = new ArrayList<OrderList>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		OrderList orderList = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				orderList = new OrderList();
				orderList.setOrdListId(rs.getLong("ord_list_id"));
				orderList.setGoodsId(rs.getLong("goods_id"));
				orderList.setGNums(rs.getInt("g_nums"));
				orderList.setGColor(rs.getString("g_color"));
				orderList.setGSize(rs.getString("g_size"));
				orderList.setGSubtotal(rs.getDouble("g_price"));
				orderList.setGPrice(rs.getDouble("g_subtotal"));
				orderList.setOrderinfoId(rs.getLong("orderinfo_id"));
				orderList.setValue(rs.getString("value"));
				list.add(orderList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	}
		
}
