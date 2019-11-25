package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.youhuo.dao.ShoppingCarDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.ShoppingCar;
/**
 * shoppingcar表操作实现类
 * 购物车表
 * @author sunrise
 *
 */
public class ShoppingCarDaoImpl implements ShoppingCarDao{
	/**
	 * 增加购物车
	 * @param conn
	 * @param shoppingCar
	 * @return
	 */
	@Override
	public boolean insertShoppingCar(Connection conn, ShoppingCar shoppingCar) {
		String sql = "insert into yh_shoppingcar(list_id,user_id,value) values(?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, shoppingCar.getListId());
			ps.setString(2, shoppingCar.getUserId());
			ps.setString(3, shoppingCar.getValue());
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
	 * 删除购物车
	 * @param conn
	 * @param shoppingCar
	 * @return
	 */
	@Override
	public boolean deleteShoppingCar(Connection conn, ShoppingCar shoppingCar) {
		String sql = "delete from yh_shoppingcar where car_id=?";
		PreparedStatement ps = null;
		try {
			ps  = conn.prepareStatement(sql);
			ps.setLong(1, shoppingCar.getCarId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}
	/**
	 * 更新购物车
	 * @param conn
	 * @param shoppingCar
	 * @return
	 */
	@Override
	public boolean updateShoppingCar(Connection conn, ShoppingCar shoppingCar) {
		String sql = "update yh_shoppingcar set list_id=?,user_id=?,"
				+ "value=? where car_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, shoppingCar.getListId());
			ps.setString(2, shoppingCar.getUserId());
			ps.setString(3, shoppingCar.getValue());
			ps.setLong(4, shoppingCar.getCarId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}
	/**
	 * 根据ID查询购物车
	 * @param conn
	 * @param car_id
	 * @return
	 */
	@Override
	public ShoppingCar selectByID(Connection conn, Long car_id) {
		String sql = "select * from yh_shoppingcar where car_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ShoppingCar shoppingCar = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, car_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				shoppingCar = new ShoppingCar();
				shoppingCar.setCarId(rs.getLong("car_id"));
				shoppingCar.setListId(rs.getLong("list_id"));
				shoppingCar.setUserId(rs.getString("user_id"));
				shoppingCar.setValue(rs.getString("value"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shoppingCar;
	}
	/**
	 * 查询所购物车
	 * @param conn
	 * @return
	 */
	@Override
	public List<ShoppingCar> selectAll(Connection conn) {
		String sql = "select * from yh_shoppingcar";
		List<ShoppingCar> list = new ArrayList<ShoppingCar>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		ShoppingCar shoppingCar = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				shoppingCar = new ShoppingCar();
				shoppingCar.setCarId(rs.getLong("car_id"));
				shoppingCar.setListId(rs.getLong("list_id"));
				shoppingCar.setUserId(rs.getString("user_id"));
				shoppingCar.setValue(rs.getString("value"));
				list.add(shoppingCar);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	}

}
