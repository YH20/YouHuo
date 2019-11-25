package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.ShoppingCar;

/**
 * shoppingcar表操作接口
 * 购物车表
 * @author sunrise
 *
 */
public interface ShoppingCarDao {
	/**
	 * 增加购物车
	 * @param conn
	 * @param shoppingCar
	 * @return
	 */
	public boolean  insertShoppingCar(Connection conn,ShoppingCar shoppingCar);
	
	/**
	 * 删除购物车
	 * @param conn
	 * @param shoppingCar
	 * @return
	 */
	public boolean deleteShoppingCar(Connection conn,ShoppingCar shoppingCar);
	/**
	 * 更新购物车
	 * @param conn
	 * @param shoppingCar
	 * @return
	 */
	public boolean updateShoppingCar(Connection conn,ShoppingCar shoppingCar);
	/**
	 * 根据ID查询购物车
	 * @param conn
	 * @param car_id
	 * @return
	 */
	public ShoppingCar selectByID(Connection conn,Long car_id);
	/**
	 * 查询所购物车
	 * @param conn
	 * @return
	 */
	public List<ShoppingCar> selectAll(Connection conn);
}
