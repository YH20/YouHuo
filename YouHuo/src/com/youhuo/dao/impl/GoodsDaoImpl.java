package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.youhuo.dao.GoodsDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.Goods;

/**
 * 商品表数据库操作类
 * @author sunrise
 *
 */
public class GoodsDaoImpl implements GoodsDao {
	/**
	 * 使用log日志   
	 */
	
	private static Logger log = Logger.getLogger(GoodsDaoImpl.class);
	@Override
	public boolean insertGood(Connection conn, Goods goods) {
		/**
		 * 增加商品  暂时全部字段 12字段
		 */
		String sql = "insert into yh_goods(g_id,goods_name,type_id,"
				+ "goods_price,goods_imgs,goods_imginfos,goods_status,"
				+ "goods_like,showindex,recommend,created,value) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, goods.getGId());
			ps.setString(2, goods.getGoodsName());
			ps.setInt(3, goods.getTypeId());
			ps.setDouble(4, goods.getGoodsPrice());
			ps.setString(5, goods.getGoodsImgs());
			ps.setString(6, goods.getGoodsImginfos());
			ps.setInt(7, goods.getGoodsStatus());
			ps.setInt(8, goods.getGoodsLike());
			ps.setInt(9, goods.getShowindex());
			ps.setInt(10, goods.getRecommend());
			ps.setString(11, goods.getCreated());
			//保留字段，可以为空
			ps.setString(12, goods.getValue());
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
	 * 删除商品
	 * @param conn
	 * @param user
	 * @return
	 */
	@Override
	public boolean deleteGood(Connection conn, Goods goods) {
		String sql = "delete from yh_goods where g_id = ?";
		PreparedStatement ps = null;
		 try {
			 ps = conn.prepareStatement(sql);
		 ps.setLong(1, goods.getGId());
		 int n = ps.executeUpdate();
		 if(n>0) {
			 return true;
		 }
		 return true;
		} catch (SQLException e) {
			//log.debug(e);
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	/**
	 * 更新商品
	 * @param conn
	 * @param user
	 * @return
	 */
	@Override
	public boolean updateGood(Connection conn, Goods goods) {
		
		String sql = "update yh_goods set goods_name=?,type_id=?," + 
				     "goods_price=?,goods_imgs=?,goods_imginfos=?,goods_status=?,"+ 
				     "goods_like=?,showindex=?,recommend=?,created=?,value=? where g_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, goods.getGoodsName());
			ps.setInt(2, goods.getTypeId());
			ps.setDouble(3, goods.getGoodsPrice());
			ps.setString(4, goods.getGoodsImgs());
			ps.setString(5, goods.getGoodsImginfos());
			ps.setInt(6, goods.getGoodsStatus());
			ps.setInt(7, goods.getGoodsLike());
			ps.setInt(8, goods.getShowindex());
			ps.setInt(9, goods.getRecommend());
			ps.setString(10, goods.getCreated());
			//保留字段，可以为空
			ps.setString(11, goods.getValue());
			//根据ID更新
			ps.setLong(12, goods.getGId());
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
	 * 根据ID查询商品
	 * @param conn
	 * @param userid
	 * @return
	 */
	@Override
	public Goods selectByID(Connection conn, Long gid) {
		String sql = "select * from yh_goods where g_id =?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods goods = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, gid);
			rs = ps.executeQuery();
			if(rs.next()) {
				goods = new Goods();
				goods.setGId(rs.getLong("g_id"));
				goods.setGoodsName(rs.getString("goods_name"));
				goods.setTypeId(rs.getInt("type_id"));
				goods.setGoodsPrice(rs.getDouble("goods_price"));
				goods.setGoodsImgs(rs.getString("goods_imgs"));
				goods.setGoodsImginfos(rs.getString("goods_imginfos"));
				goods.setGoodsStatus(rs.getInt("goods_status"));
				goods.setGoodsLike(rs.getInt("goods_like"));
				goods.setShowindex(rs.getInt("showindex"));
				goods.setRecommend(rs.getInt("recommend"));
				goods.setCreated(rs.getString("created"));
				goods.setValue(rs.getString("value"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goods;
	}
	/**
	 * 查询所有商品
	 * @param conn
	 * @return
	 */
	@Override
	public List<Goods> selectAll(Connection conn) {
		String sql = "select * from yh_goods";
		List<Goods> list = new ArrayList<Goods>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods goods = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				goods = new Goods();
				goods.setGId(rs.getLong("g_id"));
				goods.setGoodsName(rs.getString("goods_name"));
				goods.setTypeId(rs.getInt("type_id"));
				goods.setGoodsPrice(rs.getDouble("goods_price"));
				goods.setGoodsImgs(rs.getString("goods_imgs"));
				goods.setGoodsImginfos(rs.getString("goods_imginfos"));
				goods.setGoodsStatus(rs.getInt("goods_status"));
				goods.setGoodsLike(rs.getInt("goods_like"));
				goods.setShowindex(rs.getInt("showindex"));
				goods.setRecommend(rs.getInt("recommend"));
				goods.setCreated(rs.getString("created"));
				goods.setValue(rs.getString("value"));
				list.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	}
	/**
	 * 根据首页推荐，点赞数，推荐度
	 * @param conn
	 * @param showindex
	 * @param recommend
	 * @param nums
	 * @param desc
	 * @return
	 */
	@Override
	public List<Goods> selectByShowindexAndRecommend(Connection conn,int showindex, int recommend, int nums,boolean desc) {
		
		String sql ="SELECT * from yh_goods" + 
				" where showindex =?  AND recommend =?" + 
				" GROUP BY goods_like";
		
		if(desc) {
			sql+=" DESC";
		}else {
			sql+=" ASC";
		}
		sql+=" LIMIT 0,?";
		List<Goods> list = new ArrayList<Goods>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods goods = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, showindex);
			ps.setInt(2, recommend);
			ps.setInt(3, nums);
			rs = ps.executeQuery();
			while(rs.next()) {
				goods = new Goods();
				goods.setGId(rs.getLong("g_id"));
				goods.setGoodsName(rs.getString("goods_name"));
				goods.setTypeId(rs.getInt("type_id"));
				goods.setGoodsPrice(rs.getDouble("goods_price"));
				goods.setGoodsImgs(rs.getString("goods_imgs"));
				goods.setGoodsImginfos(rs.getString("goods_imginfos"));
				goods.setGoodsStatus(rs.getInt("goods_status"));
				goods.setGoodsLike(rs.getInt("goods_like"));
				goods.setShowindex(rs.getInt("showindex"));
				goods.setRecommend(rs.getInt("recommend"));
				goods.setCreated(rs.getString("created"));
				goods.setValue(rs.getString("value"));
				list.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	
	}
	/**
	 * 根据分类推荐点赞数高的产品，或者是低的产品
	 * @param conn
	 * @param type
	 * @param recommend
	 * @param nums
	 * @param desc
	 * @return
	 */
	@Override
	public List<Goods> selectByGoodsTypeAndRecommend(Connection conn, int type, int recommend, int nums, boolean desc) {
		String sql = "SELECT * FROM yh_goods" + 
				" where type_id = ? AND recommend = ?" + 
				" ORDER BY goods_like";
		if(desc) {
			sql+=" DESC";
		}else {
			sql+=" ASC";
		}
		 sql+=" LIMIT 0,?";
		 List<Goods> list = new ArrayList<Goods>();
			PreparedStatement ps = null;
			ResultSet rs = null;
			Goods goods = null;
			try {
				ps = conn.prepareStatement(sql);
				ps.setInt(1, type);
				ps.setInt(2, recommend);
				ps.setInt(3, nums);
				rs = ps.executeQuery();
				while(rs.next()) {
					goods = new Goods();
					goods.setGId(rs.getLong("g_id"));
					goods.setGoodsName(rs.getString("goods_name"));
					goods.setTypeId(rs.getInt("type_id"));
					goods.setGoodsPrice(rs.getDouble("goods_price"));
					goods.setGoodsImgs(rs.getString("goods_imgs"));
					goods.setGoodsImginfos(rs.getString("goods_imginfos"));
					goods.setGoodsStatus(rs.getInt("goods_status"));
					goods.setGoodsLike(rs.getInt("goods_like"));
					goods.setShowindex(rs.getInt("showindex"));
					goods.setRecommend(rs.getInt("recommend"));
					goods.setCreated(rs.getString("created"));
					goods.setValue(rs.getString("value"));
					list.add(goods);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				DBHelper.closeResoues(ps, rs);
			}
			return list;
	}
}
