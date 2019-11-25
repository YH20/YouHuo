package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.AttrName;
/**
 * AttrName表操作接口
 * @author sunrise
 *
 */
public interface AttrNameDao {
	/**
	 * 增加商品属性名
	 * @param conn
	 * @param attrName
	 * @return
	 */
	public boolean  insertAttrName(Connection conn,AttrName attrName);
	
	/**
	 * 删除商品属性名
	 * @param conn
	 * @param attrName
	 * @return
	 */
	public boolean deleteAttrName(Connection conn,AttrName attrName);
	/**
	 * 更新商品属性名
	 * @param conn
	 * @param attrName
	 * @return
	 */
	public boolean updateAttrName(Connection conn,AttrName attrName);
	/**
	 * 根据ID查询商品属性名
	 * @param conn
	 * @param ty_id
	 * @return
	 */
	public AttrName selectByID(Connection conn,int attrn_id);
	/**
	 * 查询所有商品属性名
	 * @param conn
	 * @return
	 */
	public List<AttrName> selectAll(Connection conn);
}
