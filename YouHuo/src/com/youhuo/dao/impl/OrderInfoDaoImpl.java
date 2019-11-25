package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.OrderInfoDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.OrderInfo;

/**
 * OrderInfo表操作实现类
 * 订单信息表
 * @author sunrise
 *
 */
public class OrderInfoDaoImpl implements OrderInfoDao{
	/**
	 * 增加订单
	 * @param conn
	 * @param orderInfo
	 * @return
	 */
	@Override
	public boolean insertOrderInfo(Connection conn, OrderInfo orderInfo) {
		/**
		 * 插入11 ID自增
		 */
		String sql = "insert into yh_orderinfo(ord_list_name,address_id,ord_summoney,"
				+ "ord_tran_money,ord_status,ord_remaeks,ord_express,ord_delivery_status,"
				+ "user_id,created,value) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, orderInfo.getOrdListName());
			ps.setLong(2, orderInfo.getAddressId());
			ps.setDouble(3, orderInfo.getOrdSummoney());
			ps.setDouble(4, orderInfo.getOrdTranMoney());
			ps.setInt(5, orderInfo.getOrdStatus());
			ps.setString(6, orderInfo.getOrdRemaeks());
			ps.setString(7,orderInfo.getOrdExpress());
			ps.setInt(8, orderInfo.getOrdDeliveryStatus());
			ps.setString(9, orderInfo.getUserId());
			ps.setString(10, orderInfo.getCreated());
			ps.setString(11, orderInfo.getValue());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	/**
	 * 删除订单
	 * @param conn
	 * @param orderInfo
	 * @return
	 */
	@Override
	public boolean deleteOrderInfo(Connection conn, OrderInfo orderInfo) {
		String sql = "delete from yh_orderinfo where ord_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1,orderInfo.getOrdId());
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
	 * 更新订单
	 * @param conn
	 * @param orderInfo
	 * @return
	 */
	@Override
	public boolean updateOrderInfo(Connection conn, OrderInfo orderInfo) {
		String sql = "update yh_orderinfo set ord_list_name=?,address_id=?,ord_summoney=?,"+ 
						"ord_tran_money=?,ord_status=?,ord_remaeks=?,ord_express=?,ord_delivery_status=?," + 
							"user_id=?,created=?,value=? where ord_id =?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, orderInfo.getOrdListName());
			ps.setLong(2, orderInfo.getAddressId());
			ps.setDouble(3, orderInfo.getOrdSummoney());
			ps.setDouble(4, orderInfo.getOrdTranMoney());
			ps.setInt(5, orderInfo.getOrdStatus());
			ps.setString(6, orderInfo.getOrdRemaeks());
			ps.setString(7,orderInfo.getOrdExpress());
			ps.setInt(8, orderInfo.getOrdDeliveryStatus());
			ps.setString(9, orderInfo.getUserId());
			ps.setString(10, orderInfo.getCreated());
			ps.setString(11, orderInfo.getValue());
			
			ps.setLong(12, orderInfo.getOrdId());
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
	 * 根据ID查询订单
	 * @param conn
	 * @param ord_id
	 * @return
	 */
	@Override
	public OrderInfo selectByID(Connection conn, long ord_id) {
		String sql = "select * from yh_orderinfo where ord_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		OrderInfo orderInfo = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, ord_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				orderInfo = new OrderInfo();
				orderInfo.setOrdId(rs.getLong("ord_id"));
				orderInfo.setOrdListName(rs.getString("ord_list_name"));
				orderInfo.setAddressId(rs.getLong("address_id"));
				orderInfo.setOrdSummoney(rs.getDouble("ord_summoney"));
				orderInfo.setOrdTranMoney(rs.getDouble("ord_tran_money"));
				orderInfo.setOrdStatus(rs.getInt("ord_status"));
				orderInfo.setOrdRemaeks(rs.getString("ord_remaeks"));
				orderInfo.setOrdExpress(rs.getString("ord_express"));
				orderInfo.setOrdDeliveryStatus(rs.getInt("ord_delivery_status"));
				orderInfo.setUserId(rs.getString("user_id"));
				orderInfo.setCreated(rs.getString("created"));
				orderInfo.setValue(rs.getString("value"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return orderInfo;
	}
	/**
	 * 查询所有订单
	 * @param conn
	 * @return
	 */
	@Override
	public List<OrderInfo> selectAll(Connection conn) {
		String sql = "select * from yh_orderinfo";
		List<OrderInfo> list = new ArrayList<OrderInfo>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		OrderInfo orderInfo = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				orderInfo = new OrderInfo();
				orderInfo.setOrdId(rs.getLong("ord_id"));
				orderInfo.setOrdListName(rs.getString("ord_list_name"));
				orderInfo.setAddressId(rs.getLong("address_id"));
				orderInfo.setOrdSummoney(rs.getDouble("ord_summoney"));
				orderInfo.setOrdTranMoney(rs.getDouble("ord_tran_money"));
				orderInfo.setOrdStatus(rs.getInt("ord_status"));
				orderInfo.setOrdRemaeks(rs.getString("ord_remaeks"));
				orderInfo.setOrdExpress(rs.getString("ord_express"));
				orderInfo.setOrdDeliveryStatus(rs.getInt("ord_delivery_status"));
				orderInfo.setUserId(rs.getString("user_id"));
				orderInfo.setCreated(rs.getString("created"));
				orderInfo.setValue(rs.getString("value"));
				list.add(orderInfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
