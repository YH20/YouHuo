package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.GoodsType;

/**
 * GoodsType表
 * 商品类型表
 * @author sunrise
 *
 */
public interface GoodsTypeDao {
	/**
	 * 增加商品类型
	 * @param conn
	 * @param goodsType
	 * @return
	 */
	public boolean  insertGoodsType(Connection conn,GoodsType goodsType);
	
	/**
	 * 删除商品类型
	 * @param conn
	 * @param goodsType
	 * @return
	 */
	public boolean deleteGoodsType(Connection conn,GoodsType goodsType);
	/**
	 * 更新商品类型
	 * @param conn
	 * @param goodsType
	 * @return
	 */
	public boolean updateGoodsType(Connection conn,GoodsType goodsType);
	/**
	 * 根据ID查询商品类型
	 * @param conn
	 * @param ty_id
	 * @return
	 */
	public GoodsType selectByID(Connection conn,int ty_id);
	/**
	 * 查询所有商品类型
	 * @param conn
	 * @return
	 */
	public List<GoodsType> selectAll(Connection conn);
}
