package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.SkuRepertoryDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.SkuRepertory;
/**
 * SkuRepertory表操作实现类
 * 商品库sku库存记录表
 * @author sunrise
 *
 */
public class SkuRepertoryDaoImpl implements SkuRepertoryDao{
	/**
	 * 增加商品库sku库存记录
	 * @param conn
	 * @param skuRepertory
	 * @return
	 */
	@Override
	public boolean insertSkuRepertory(Connection conn, SkuRepertory skuRepertory) {
		String sql = "insert into yh_sku_repertory(goods_id,sku_attr,price,repertory,"
				+ "sku_sel) values(?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, skuRepertory.getGoodsId());
			ps.setString(2, skuRepertory.getSkuAttr());
			ps.setDouble(3, skuRepertory.getPrice());
			ps.setInt(4, skuRepertory.getRepertory());
			ps.setInt(5, skuRepertory.getSkuSel());
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
	 * 删除商品库sku库存记录
	 * @param conn
	 * @param skuRepertory
	 * @return
	 */
	@Override
	public boolean deleteSkuRepertory(Connection conn, SkuRepertory skuRepertory) {
		String sql = "delete from yh_sku_repertory where sku_repertory_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, skuRepertory.getSkuRepertoryId());
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
	 * 更新商品库sku库存记录
	 * @param conn
	 * @param skuRepertory
	 * @return
	 */
	@Override
	public boolean updateSkuRepertory(Connection conn, SkuRepertory skuRepertory) {
		
		String sql ="update yh_sku_repertory set goods_id=?,sku_attr=?,"
				+ "price=?,repertory=?,sku_sel=? where sku_repertory_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, skuRepertory.getGoodsId());
			ps.setString(2, skuRepertory.getSkuAttr());
			ps.setDouble(3, skuRepertory.getPrice());
			ps.setInt(4, skuRepertory.getRepertory());
			ps.setInt(5, skuRepertory.getSkuSel());
			//ID
			ps.setLong(6, skuRepertory.getSkuRepertoryId());
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
	 * 根据ID查询商品库sku库存记录
	 * @param conn
	 * @param sku_repertory_id
	 * @return
	 */
	@Override
	public SkuRepertory selectByID(Connection conn, long sku_repertory_id) {
		String sql = "select * from yh_sku_repertory where sku_repertory_id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		SkuRepertory skuRepertory = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, sku_repertory_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				skuRepertory = new SkuRepertory();
				skuRepertory.setSkuRepertoryId(rs.getLong("sku_repertory_id"));
				skuRepertory.setGoodsId(rs.getLong("goods_id"));
				skuRepertory.setSkuAttr(rs.getString("sku_attr"));
				skuRepertory.setPrice(rs.getDouble("price"));
				skuRepertory.setRepertory(rs.getInt("repertory"));
				skuRepertory.setSkuSel(rs.getInt("sku_sel"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return skuRepertory;
	}	
	/**
	 * 查询所有商品库sku库存记录
	 * @param conn
	 * @return
	 */
	@Override
	public List<SkuRepertory> selectAll(Connection conn) {
		String sql = "select * from yh_sku_repertory";
		List<SkuRepertory> list = new ArrayList<SkuRepertory>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		SkuRepertory skuRepertory = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				skuRepertory = new SkuRepertory();
				skuRepertory.setSkuRepertoryId(rs.getLong("sku_repertory_id"));
				skuRepertory.setGoodsId(rs.getLong("goods_id"));
				skuRepertory.setSkuAttr(rs.getString("sku_attr"));
				skuRepertory.setPrice(rs.getDouble("price"));
				skuRepertory.setRepertory(rs.getInt("repertory"));
				skuRepertory.setSkuSel(rs.getInt("sku_sel"));
				list.add(skuRepertory);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return list;
	}
	
}
