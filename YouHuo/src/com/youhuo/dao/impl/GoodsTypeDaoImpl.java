package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.GoodsTypeDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.GoodsType;
/**
 * GoodsType表
 * 商品类型表
 * @author sunrise
 *
 */
public class GoodsTypeDaoImpl implements GoodsTypeDao{
	/**
	 * 增加商品类型
	 * @param conn
	 * @param goodsType
	 * @return
	 */
	@Override
	public boolean insertGoodsType(Connection conn, GoodsType goodsType) {
		String sql ="insert into yh_goods_type";
		return false;
	}
	/**
	 * 删除商品类型
	 * @param conn
	 * @param goodsType
	 * @return
	 */
	@Override
	public boolean deleteGoodsType(Connection conn, GoodsType goodsType) {
		String sql = "delete from yh_goods_type where ty_id =?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, goodsType.getTyId());
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
	 * 更新商品类型
	 * @param conn
	 * @param goodsType
	 * @return
	 */
	@Override
	public boolean updateGoodsType(Connection conn, GoodsType goodsType) {
		// TODO Auto-generated method stub
		return false;
	}
	/**
	 * 根据ID查询商品类型
	 * @param conn
	 * @param ty_id
	 * @return
	 */
	@Override
	public GoodsType selectByID(Connection conn, int ty_id) {
		String sql = "select * from yh_goods_type where ty_id =?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		GoodsType goodsType = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, ty_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				goodsType = new GoodsType();
				goodsType.setTyId(rs.getInt("ty_id"));
				goodsType.setCatName(rs.getString("cat_name"));
				goodsType.setCatCode(rs.getString("cat_code"));
				goodsType.setParentId(rs.getInt("parent_id"));
				goodsType.setCatImg(rs.getString("cat_img"));
				goodsType.setValue(rs.getString("value"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodsType;
	}
	/**
	 * 查询所有商品类型
	 * @param conn
	 * @return
	 */
	@Override
	public List<GoodsType> selectAll(Connection conn) {
		String sql = "select * from yh_goods_type";
		List<GoodsType> list = new ArrayList<GoodsType>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		GoodsType goodsType = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				goodsType = new GoodsType();
				goodsType.setTyId(rs.getInt("ty_id"));
				goodsType.setCatName(rs.getString("cat_name"));
				goodsType.setCatCode(rs.getString("cat_code"));
				goodsType.setParentId(rs.getInt("parent_id"));
				goodsType.setCatImg(rs.getString("cat_img"));
				goodsType.setValue(rs.getString("value"));
				list.add(goodsType);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
