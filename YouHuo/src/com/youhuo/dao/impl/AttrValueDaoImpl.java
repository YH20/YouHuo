package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.AttrValueDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.AttrValue;
/**
 * 商品属性值操作实现类
 * @author sunrise
 *
 */
public class AttrValueDaoImpl implements AttrValueDao{
	/**
	 * 增加商品属性值
	 * @param conn
	 * @param attrValue
	 * @return
	 */
	@Override
	public boolean insertAttrValue(Connection conn, AttrValue attrValue) {
		String sql = "insert into yh_attr_value(attrv_id,attr_value,attr_id) values(?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, attrValue.getAttrvId());
			ps.setString(2, attrValue.getAttrValue());
			ps.setInt(3, attrValue.getAttrId());
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
	 * 删除商品属性值
	 * @param conn
	 * @param attrValue
	 * @return
	 */
	@Override
	public boolean deleteAttrValue(Connection conn, AttrValue attrValue) {
		String sql = "delete from yh_attr_value where attrv_id = ?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, attrValue.getAttrvId());
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
	 * 更新商品属性值
	 * @param conn
	 * @param attrValue
	 * @return
	 */
	@Override
	public boolean updateAttrValue(Connection conn, AttrValue attrValue) {
		String sql = "update yh_attr_value set attr_value=?,attr_id=? where attrv_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, attrValue.getAttrValue());
			ps.setInt(2, attrValue.getAttrId());
			ps.setInt(3, attrValue.getAttrvId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	/**
	 * 根据ID查询商品属性值
	 * @param conn
	 * @param attrv_id
	 * @return
	 */
	@Override
	public AttrValue selectByID(Connection conn, int attrv_id) {
		String sql = "select * from yh_attr_value where attrv_id = ?";
		AttrValue attrValue = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, attrv_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				attrValue = new AttrValue();
				attrValue.setAttrvId(rs.getInt("attrv_id"));
				attrValue.setAttrValue(rs.getString("attr_value"));
				attrValue.setAttrId(rs.getInt("attr_id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return attrValue;
	}
	/**
	 * 查询所有商品属性值
	 * @param conn
	 * @return
	 */
	@Override
	public List<AttrValue> selectAll(Connection conn) {
		String sql = "select * from yh_attr_value";
		List<AttrValue> list = new ArrayList<AttrValue>();
		AttrValue attrValue = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				attrValue = new AttrValue();
				attrValue.setAttrvId(rs.getInt("attrv_id"));
				attrValue.setAttrValue(rs.getString("attr_value"));
				attrValue.setAttrId(rs.getInt("attr_id"));
				list.add(attrValue);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
