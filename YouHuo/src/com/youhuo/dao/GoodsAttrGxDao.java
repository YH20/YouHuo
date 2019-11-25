package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.GoodsAttrGx;

/**
 * GoodsAttrGx表操作接口
 * @author sunrise
 *
 */
public interface GoodsAttrGxDao {
	/**
	 * 增加商品与属性的关系
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	public boolean  insertGoodsAttrGx(Connection conn,GoodsAttrGx goodsAttrGx);
	
	/**
	 * 删除商品与属性的关系
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	public boolean deleteGoodsAttrGx(Connection conn,GoodsAttrGx goodsAttrGx);
	/**
	 * 更新商品与属性的关系
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	public boolean updateGoodsAttrGx(Connection conn,GoodsAttrGx goodsAttrGx);
	/**
	 * 根据ID查询用户
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	public GoodsAttrGx selectByID(Connection conn,Long goodsattr_id);
	/**
	 * 查询商品与属性的关系
	 * @param conn
	 * @return
	 */
	public List<GoodsAttrGx> selectAll(Connection conn);
}
