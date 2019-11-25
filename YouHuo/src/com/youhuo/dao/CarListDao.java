package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.CarList;

/**
 * CarList购物车的商品关系表操作接口
 * @author sunrise
 *
 */
public interface CarListDao {
	/**
	 * 购物车增加商品
	 * @param conn
	 * @param carList
	 * @return
	 */
	public boolean  insertCarList(Connection conn,CarList carList);
	
	/**
	 * 购物车删除商品
	 * @param conn
	 * @param carList
	 * @return
	 */
	public boolean deleteCarList(Connection conn,CarList carList);
	/**
	 * 更新购物车里的商品
	 * @param conn
	 * @param carList
	 * @return
	 */
	public boolean updateCarList(Connection conn,CarList carList);
	/**
	 * 根据ID查询购物车的某一个商品的信息
	 * @param conn
	 * @param li_id
	 * @return
	 */
	public CarList selectByID(Connection conn,long li_id);
	/**
	 * 查询购物车与商品所有的关系
	 * @param conn
	 * @return
	 */
	public List<CarList> selectAll(Connection conn);
}
