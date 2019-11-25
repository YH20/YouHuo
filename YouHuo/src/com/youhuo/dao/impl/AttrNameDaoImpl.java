package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.AttrNameDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.AttrName;

/**
 * AttrName表操作实现类
 * @author sunrise
 *
 */
public class AttrNameDaoImpl implements AttrNameDao{
	
	/**
	 * 增加商品属性名
	 * @param conn
	 * @param attrName
	 * @return
	 */
	@Override
	public boolean insertAttrName(Connection conn, AttrName attrName) {
		String sql = "insert into yh_attr_name(attrn_id,attr_name,"
				+ "type_id,parent_id) values(?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, attrName.getAttrnId());
			ps.setString(2, attrName.getAttrName());
			ps.setInt(3, attrName.getTypeId());
			ps.setInt(4, attrName.getParentId());
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
	 * 删除商品属性名
	 * @param conn
	 * @param attrName
	 * @return
	 */
	@Override
	public boolean deleteAttrName(Connection conn, AttrName attrName) {
		String sql = "delete from yh_attr_name where attrn_id =?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, attrName.getAttrnId());
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
	 * 更新商品属性名
	 * @param conn
	 * @param attrName
	 * @return
	 */
	@Override
	public boolean updateAttrName(Connection conn, AttrName attrName) {
		String sql = "update yh_attr_name set attr_name=?," + 
				"type_id=?,parent_id=? where attrn_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, attrName.getAttrName());
			ps.setInt(2, attrName.getTypeId());
			ps.setInt(3, attrName.getParentId());
			ps.setInt(4, attrName.getAttrnId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}
	/**
	 * 根据ID查询商品属性名
	 * @param conn
	 * @param ty_id
	 * @return
	 */
	@Override
	public AttrName selectByID(Connection conn, int attrn_id) {
		String sql = "select * from yh_attr_name where attrn_id =?";
		AttrName attrName = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, attrn_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				attrName = new AttrName();
				attrName.setAttrnId(rs.getInt("attrn_id"));
				attrName.setAttrName(rs.getString("attr_name"));
				attrName.setTypeId(rs.getInt("type_id"));
				attrName.setParentId(rs.getInt("parent_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return attrName;
	}
	/**
	 * 查询所有商品属性名
	 * @param conn
	 * @return
	 */
	@Override
	public List<AttrName> selectAll(Connection conn) {
		List<AttrName> list = new ArrayList<AttrName>();
		String sql = "select * from yh_attr_name";
		AttrName attrName = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				attrName = new AttrName();
				attrName.setAttrnId(rs.getInt("attrn_id"));
				attrName.setAttrName(rs.getString("attr_name"));
				attrName.setTypeId(rs.getInt("type_id"));
				attrName.setParentId(rs.getInt("parent_id"));
				list.add(attrName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		
		return list;
	}
	
	
}
