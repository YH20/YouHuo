package com.youhuo.service.serviceImpl.zz;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.GoodsDao;
import com.youhuo.dao.GoodsTypeDao;
import com.youhuo.dao.impl.GoodsDaoImpl;
import com.youhuo.dao.impl.GoodsTypeDaoImpl;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.Goods;
import com.youhuo.pojo.GoodsType;
import com.youhuo.service.zz.GoodsShowService;
/**
 * 商品展示Service实现类
 * @author sunrise
 *
 */
public class GoodsShowServiceImpl implements GoodsShowService{
	
	private GoodsDao dao = new GoodsDaoImpl();
	private GoodsTypeDao typeDao = new GoodsTypeDaoImpl();
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
	@Override
	public List<Goods> showGoodsLike(int nums, int type) {
		Connection conn = DBHelper.getConnection();
		List<Goods> goodsList = null;
		if(type==1) {
			goodsList =  dao.selectByShowindexAndRecommend(conn, 1, 1, nums,true);
		}
		if(type==2) {
			goodsList =  dao.selectByShowindexAndRecommend(conn, 0, 1, nums,true);
		}
		if(type==3) {
			goodsList =  dao.selectByShowindexAndRecommend(conn, 1, 0, nums,true);
		}
		DBHelper.getConnection();
		return goodsList;
	}
	/**
	 * 首页新品上市轮播图
	 * @return
	 */
	@Override
	public  List<Goods> slideshowGoods() {
		Connection conn = DBHelper.getConnection();
		List<Goods> newList = new ArrayList<Goods>();
		List<Goods> goodsList = null;
		goodsList =  dao.selectByShowindexAndRecommend(conn, 1, 1, 5,false);
		for (int i = 1; i <=4; i++) {
			newList.add(goodsList.get(i));
		}
		for (int i = 0; i < goodsList.size(); i++) {
			newList.add(goodsList.get(i));
		}
		for (int i = 0; i <=3; i++) {
			newList.add(goodsList.get(i));
		}
//		int n = -4;
//		for (int i = 0; i < newList.size(); i++) {
//			System.out.println((n++)+"===="+newList.get(i).getGoodsName());
//		}
		return newList;
	}
	
	/**
	 * 查询商品详情
	 * @param gid
	 * @return
	 */
	@Override
	public Goods selectGoodsInfo(long gid) {
		Connection conn = DBHelper.getConnection();
		Goods goods = dao.selectByID(conn, gid);
		DBHelper.closeConnection(conn);
		return goods;
	}
	
	public static void main(String[] args) {
		GoodsShowService service = new GoodsShowServiceImpl();
		service.slideshowGoods();
		System.out.println(service.selectGoodsInfo(37081L));
	}
	@Override
	public GoodsType selectGoodsType(int typeId) {
		Connection conn = DBHelper.getConnection();
		GoodsType goodsType = null;
		goodsType = typeDao.selectByID(conn, typeId);
		DBHelper.closeConnection(conn);
		return goodsType;
	}
	@Override
	public List<Goods> recommendGoods(int type, int recommend, int nums, boolean desc) {
		Connection conn = DBHelper.getConnection();
		List<Goods> list = dao.selectByGoodsTypeAndRecommend(conn, type, recommend, nums, desc);
		DBHelper.closeConnection(conn);
		return list;
	}
}
