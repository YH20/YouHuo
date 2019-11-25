package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.CarListDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.CarList;

/**
 * CarList购物车的商品关系表操作实现类
 * @author sunrise
 *
 */
public class CarListDaoImpl implements CarListDao{
	/**
	 * 购物车增加商品
	 * @param conn
	 * @param carList
	 * @return
	 */
	@Override
	public boolean insertCarList(Connection conn, CarList carList) {
		/**
		 * 购物车ID自增	 插入8个字段 id自增
		 */
		String sql = "insert into yh_car_list(goods_id,nums,color,size,car_price,"
				+ "car_subtotal,car_id,value) values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, carList.getGoodsId());
			ps.setInt(2, carList.getNums());
			ps.setString(3, carList.getColor());
			ps.setString(4, carList.getSize());
			ps.setDouble(5, carList.getCarPrice());
			ps.setDouble(6, carList.getCarSubtotal());
			ps.setLong(7, carList.getCarId());
			ps.setString(8, carList.getValue());
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
	 * 购物车删除商品
	 * @param conn
	 * @param carList
	 * @return
	 */
	@Override
	public boolean deleteCarList(Connection conn, CarList carList) {
		String sql = "delete from yh_car_list where li_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, carList.getLiId());
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
	 * 更新购物车里的商品
	 * @param conn
	 * @param carList
	 * @return
	 */
	@Override
	public boolean updateCarList(Connection conn, CarList carList) {
		String sql = "update yh_car_list set goods_id=?,nums=?,color=?,size=?,"
				+ "car_price=?,car_subtotal=?,car_id=?,value=? where li_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, carList.getGoodsId());
			ps.setInt(2, carList.getNums());
			ps.setString(3, carList.getColor());
			ps.setString(4, carList.getSize());
			ps.setDouble(5, carList.getCarPrice());
			ps.setDouble(6, carList.getCarSubtotal());
			ps.setLong(7, carList.getCarId());
			ps.setString(8, carList.getValue());
			//ID
			ps.setLong(9, carList.getLiId());
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
	 * 根据ID查询购物车的某一个商品的信息
	 * @param conn
	 * @param li_id
	 * @return
	 */
	@Override
	public CarList selectByID(Connection conn, long li_id) {
		String sql = "select * from yh_car_list where li_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		CarList carList = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, li_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				carList = new CarList();
				carList.setLiId(rs.getLong("li_id"));
				carList.setGoodsId(rs.getLong("goods_id"));
				carList.setNums(rs.getInt("nums"));
				carList.setColor(rs.getString("color"));
				carList.setSize(rs.getString("size"));
				carList.setCarPrice(rs.getDouble("car_price"));
				carList.setCarSubtotal(rs.getDouble("car_subtotal"));
				carList.setCarId(rs.getLong("car_id"));
				carList.setValue(rs.getString("value"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return carList;
	}
	/**
	 * 查询购物车与商品所有的关系
	 * @param conn
	 * @return
	 */
	@Override
	public List<CarList> selectAll(Connection conn) {
		String sql = "select * from yh_car_list";
		List<CarList> list = new ArrayList<CarList>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		CarList carList = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				carList = new CarList();
				carList.setLiId(rs.getLong("li_id"));
				carList.setGoodsId(rs.getLong("goods_id"));
				carList.setNums(rs.getInt("nums"));
				carList.setColor(rs.getString("color"));
				carList.setSize(rs.getString("size"));
				carList.setCarPrice(rs.getDouble("car_price"));
				carList.setCarSubtotal(rs.getDouble("car_subtotal"));
				carList.setCarId(rs.getLong("car_id"));
				carList.setValue(rs.getString("value"));
				list.add(carList);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	}

}
