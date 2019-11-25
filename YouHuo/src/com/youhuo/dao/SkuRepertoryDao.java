package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.SkuRepertory;

/**
 * SkuRepertory表操作接口
 * 商品库sku库存记录表
 * @author sunrise
 *
 */
public interface SkuRepertoryDao {
	/**
	 * 增加商品库sku库存记录
	 * @param conn
	 * @param skuRepertory
	 * @return
	 */
	public boolean  insertSkuRepertory(Connection conn,SkuRepertory skuRepertory);
	
	/**
	 * 删除商品库sku库存记录
	 * @param conn
	 * @param skuRepertory
	 * @return
	 */
	public boolean deleteSkuRepertory(Connection conn,SkuRepertory skuRepertory);
	/**
	 * 更新商品库sku库存记录
	 * @param conn
	 * @param skuRepertory
	 * @return
	 */
	public boolean updateSkuRepertory(Connection conn,SkuRepertory skuRepertory);
	/**
	 * 根据ID查询商品库sku库存记录
	 * @param conn
	 * @param sku_repertory_id
	 * @return
	 */
	public SkuRepertory selectByID(Connection conn,long sku_repertory_id);
	/**
	 * 查询所有商品库sku库存记录
	 * @param conn
	 * @return
	 */
	public List<SkuRepertory> selectAll(Connection conn);
}
