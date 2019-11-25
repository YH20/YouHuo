package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.AttrValue;
/**
 * 商品属性值操作接口
 * @author sunrise
 *
 */
public interface AttrValueDao {
	/**
	 * 增加商品属性值
	 * @param conn
	 * @param attrValue
	 * @return
	 */
	public boolean  insertAttrValue(Connection conn,AttrValue attrValue);
	
	/**
	 * 删除商品属性值
	 * @param conn
	 * @param attrValue
	 * @return
	 */
	public boolean deleteAttrValue(Connection conn,AttrValue attrValue);
	/**
	 * 更新商品属性值
	 * @param conn
	 * @param attrValue
	 * @return
	 */
	public boolean updateAttrValue(Connection conn,AttrValue attrValue);
	/**
	 * 根据ID查询商品属性值
	 * @param conn
	 * @param attrv_id
	 * @return
	 */
	public AttrValue selectByID(Connection conn,int attrv_id);
	/**
	 * 查询所有商品属性值
	 * @param conn
	 * @return
	 */
	public List<AttrValue> selectAll(Connection conn);
}
