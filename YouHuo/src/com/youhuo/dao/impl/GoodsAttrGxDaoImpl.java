package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.GoodsAttrGxDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.GoodsAttrGx;
/**
 * GoodsAttrGx表操作实现类
 * @author sunrise
 *
 */
public class GoodsAttrGxDaoImpl implements GoodsAttrGxDao{
	/**
	 * 增加商品与属性的关系
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	@Override
	public boolean insertGoodsAttrGx(Connection conn, GoodsAttrGx goodsAttrGx) {
		/**
		 * 插入四个 ID自增
		 */
		String sql = "insert into yh_goods_attr_gx(goods_id,attr_name_id,"
				+ "attr_value_id,sku_id) values(?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, goodsAttrGx.getGoodsId());
			ps.setInt(2, goodsAttrGx.getAttrNameId());
			ps.setInt(3, goodsAttrGx.getAttrValueId());
			ps.setLong(4, goodsAttrGx.getSkuId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	/**
	 * 删除商品与属性的关系
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	@Override
	public boolean deleteGoodsAttrGx(Connection conn, GoodsAttrGx goodsAttrGx) {
		String sql = "delete from yh_goods_attr_gx where goodsattr_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, goodsAttrGx.getGoodsattrId());
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
	 * 更新商品与属性的关系
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	@Override
	public boolean updateGoodsAttrGx(Connection conn, GoodsAttrGx goodsAttrGx) {
		String sql = "update yh_goods_attr_gx set goods_id=?,attr_name_id=?," + 
						"attr_value_id=?,sku_id=? where goodsattr_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, goodsAttrGx.getGoodsId());
			ps.setInt(2, goodsAttrGx.getAttrNameId());
			ps.setInt(3, goodsAttrGx.getAttrValueId());
			ps.setLong(4, goodsAttrGx.getSkuId());
			//ID
			ps.setLong(5, goodsAttrGx.getGoodsattrId());
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
	 * 根据ID查询用户
	 * @param conn
	 * @param goodsAttrGx
	 * @return
	 */
	@Override
	public GoodsAttrGx selectByID(Connection conn, Long goodsattr_id) {
		
		String sql = "select * from yh_goods_attr_gx where goodsattr_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		GoodsAttrGx goodsAttrGx = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, goodsattr_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				goodsAttrGx = new GoodsAttrGx();
				goodsAttrGx.setGoodsattrId(rs.getLong("goodsattr_id"));
				goodsAttrGx.setGoodsId(rs.getLong("goods_id"));
				goodsAttrGx.setAttrNameId(rs.getInt("attr_name_id"));
				goodsAttrGx.setAttrValueId(rs.getInt("attr_value_id"));
				goodsAttrGx.setSkuId(rs.getLong("sku_id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return goodsAttrGx;
	}
	/**
	 * 查询商品与属性的关系
	 * @param conn
	 * @return
	 */
	@Override
	public List<GoodsAttrGx> selectAll(Connection conn) {
		String sql = "select * from yh_goods_attr_gx";
		List<GoodsAttrGx> list = new ArrayList<GoodsAttrGx>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		GoodsAttrGx goodsAttrGx = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				goodsAttrGx = new GoodsAttrGx();
				goodsAttrGx.setGoodsattrId(rs.getLong("goodsattr_id"));
				goodsAttrGx.setGoodsId(rs.getLong("goods_id"));
				goodsAttrGx.setAttrNameId(rs.getInt("attr_name_id"));
				goodsAttrGx.setAttrValueId(rs.getInt("attr_value_id"));
				goodsAttrGx.setSkuId(rs.getLong("sku_id"));
				list.add(goodsAttrGx);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	}

}
