package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.Goods;
/**
 * Goods表DAO接口
 * @author sunrise
 *
 */
public interface GoodsDao {
		/**
		 * 增加商品
		 * @param conn
		 * @param goods
		 * @return
		 */
		public boolean  insertGood(Connection conn,Goods goods);
		/**
		 * 删除商品
		 * @param conn
		 * @param goods
		 * @return
		 */
		public boolean deleteGood(Connection conn,Goods goods);
		/**
		 * 更新商品
		 * @param conn
		 * @param goods
		 * @return
		 */
		public boolean updateGood(Connection conn,Goods goods);
		/**
		 * 根据ID查询商品
		 * @param conn
		 * @param gid
		 * @return
		 */
		public Goods selectByID(Connection conn,Long gid);
		/**
		 * 查询所有商品
		 * @param goods
		 * @return
		 */
		public List<Goods> selectAll(Connection conn);
		
		/**
		 * 根据查询参数，查出指定的商品List
		 */
		public List<Goods> selectByShowindexAndRecommend(Connection conn,int showindex,int recommend,int nums,boolean desc);
}
