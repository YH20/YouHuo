package com.youhuo.service.zz;

import java.util.List;

import com.youhuo.pojo.Goods;
import com.youhuo.pojo.GoodsType;

/**
 *商品查询展示用的service
 * @author sunrise
 *
 */
public interface GoodsShowService {
	/**
	 * 首页的推荐数据 
	 * @param nums  数量
	 * @param type  类型    
	 *              首页展示 点赞数 是否推荐
	 * 1   1      最高前几		1
	 * 2   0     最高前几		1
	 * 3   1     最高前几		0
	 * @return
	 */
	
	public List<Goods> showGoodsLike(int nums,int type);
	/**
	 * 首页新品上市轮播图
	 * @return
	 */
	public List<Goods> slideshowGoods();
	/**
	 * 查询商品详情
	 * @param gid
	 * @return
	 */
	public Goods selectGoodsInfo(long gid);
	/**
	 * 获取产品的类型
	 * @param typeId
	 * @return
	 */
	public GoodsType selectGoodsType(int typeId);
	
	/**
	 * 根据产品类型推荐商品
	 */
	public List<Goods> recommendGoods(int type,int recommend, int nums, boolean desc);
}
