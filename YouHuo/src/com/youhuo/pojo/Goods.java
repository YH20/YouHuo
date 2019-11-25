package com.youhuo.pojo;

/**
 * YH_GOODS
 * 
 * @author sunrise
 * @version 1.0.0 2019-11-23
 */
public class Goods implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -4971546230897200614L;


    /** 商品id */
    private Long gId;

    /** 商品名 */
    private String goodsName;

    /** 商品类型 */
    private Integer typeId;

    /** 商品价格 */
    private Double goodsPrice;

    /** 多张商品图(用@YH@分开) */
    private String goodsImgs;

    /** 多张商品详情图片(用@YH@分开) */
    private String goodsImginfos;

    /** 商品状态，1-正常，2-下架，3-删除 */
    private Integer  goodsStatus;

    /** 商品点赞数 */
    private Integer goodsLike;

    /** 1代表首页展示，0则不在首页 */
    private Integer showindex;

    /** 推荐商品，1代表推荐，0代表不推荐 */
    private Integer recommend;

    /** 商品创建时间 */
    private String created;

    /** 保留字段 */
    private String value;

   public Goods() {
	// TODO Auto-generated constructor stub
   }
   
    public Goods(Long gId, String goodsName, Integer typeId, Double goodsPrice, String goodsImgs, String goodsImginfos,
		Integer goodsStatus, Integer goodsLike, Integer showindex, Integer recommend, String created, String value) {
	this.gId = gId;
	this.goodsName = goodsName;
	this.typeId = typeId;
	this.goodsPrice = goodsPrice;
	this.goodsImgs = goodsImgs;
	this.goodsImginfos = goodsImginfos;
	this.goodsStatus = goodsStatus;
	this.goodsLike = goodsLike;
	this.showindex = showindex;
	this.recommend = recommend;
	this.created = created;
	this.value = value;
}

	/**
     * 获取商品id
     * 
     * @return 商品id
     */
    public Long getGId() {
        return this.gId;
    }

    /**
     * 设置商品id
     * 
     * @param gId
     *          商品id
     */
    public void setGId(Long gId) {
        this.gId = gId;
    }

    /**
     * 获取商品名
     * 
     * @return 商品名
     */
    public String getGoodsName() {
        return this.goodsName;
    }

    /**
     * 设置商品名
     * 
     * @param goodsName
     *          商品名
     */
    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    /**
     * 获取商品类型
     * 
     * @return 商品类型
     */
    public Integer getTypeId() {
        return this.typeId;
    }

    /**
     * 设置商品类型
     * 
     * @param typeId
     *          商品类型
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * 获取商品价格
     * 
     * @return 商品价格
     */
    public Double getGoodsPrice() {
        return this.goodsPrice;
    }

    /**
     * 设置商品价格
     * 
     * @param goodsPrice
     *          商品价格
     */
    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    /**
     * 获取多张商品图(用@YH@分开)
     * 
     * @return 多张商品图(用@YH@分开)
     */
    public String getGoodsImgs() {
        return this.goodsImgs;
    }

    /**
     * 设置多张商品图(用@YH@分开)
     * 
     * @param goodsImgs
     *          多张商品图(用@YH@分开)
     */
    public void setGoodsImgs(String goodsImgs) {
        this.goodsImgs = goodsImgs;
    }

    /**
     * 获取多张商品详情图片(用@YH@分开)
     * 
     * @return 多张商品详情图片(用@YH@分开)
     */
    public String getGoodsImginfos() {
        return this.goodsImginfos;
    }

    /**
     * 设置多张商品详情图片(用@YH@分开)
     * 
     * @param goodsImginfos
     *          多张商品详情图片(用@YH@分开)
     */
    public void setGoodsImginfos(String goodsImginfos) {
        this.goodsImginfos = goodsImginfos;
    }

    /**
     * 获取商品状态，1-正常，2-下架，3-删除
     * 
     * @return 商品状态
     */
    public Integer getGoodsStatus() {
        return this. goodsStatus;
    }

    /**
     * 设置商品状态，1-正常，2-下架，3-删除
     * 
     * @param  goodsStatus
     *          商品状态
     */
    public void setGoodsStatus(Integer  goodsStatus) {
        this. goodsStatus =  goodsStatus;
    }

    /**
     * 获取商品点赞数
     * 
     * @return 商品点赞数
     */
    public Integer getGoodsLike() {
        return this.goodsLike;
    }

    /**
     * 设置商品点赞数
     * 
     * @param goodsLike
     *          商品点赞数
     */
    public void setGoodsLike(Integer goodsLike) {
        this.goodsLike = goodsLike;
    }

    /**
     * 获取1代表首页展示，0则不在首页
     * 
     * @return 1代表首页展示
     */
    public Integer getShowindex() {
        return this.showindex;
    }

    /**
     * 设置1代表首页展示，0则不在首页
     * 
     * @param showindex
     *          1代表首页展示
     */
    public void setShowindex(Integer showindex) {
        this.showindex = showindex;
    }

    /**
     * 获取推荐商品，1代表推荐，0代表不推荐
     * 
     * @return 推荐商品
     */
    public Integer getRecommend() {
        return this.recommend;
    }

    /**
     * 设置推荐商品，1代表推荐，0代表不推荐
     * 
     * @param recommend
     *          推荐商品
     */
    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }

    /**
     * 获取商品创建时间
     * 
     * @return 商品创建时间
     */
    public String getCreated() {
        return this.created;
    }

    /**
     * 设置商品创建时间
     * 
     * @param created
     *          商品创建时间
     */
    public void setCreated(String created) {
        this.created = created;
    }

    /**
     * 获取保留字段
     * 
     * @return 保留字段
     */
    public String getValue() {
        return this.value;
    }

    /**
     * 设置保留字段
     * 
     * @param value
     *          保留字段
     */
    public void setValue(String value) {
        this.value = value;
    }

	@Override
	public String toString() {
		return "Goods [gId=" + gId + ", goodsName=" + goodsName + ", typeId=" + typeId + ", goodsPrice=" + goodsPrice
				+ ", goodsImgs=" + goodsImgs + ", goodsImginfos=" + goodsImginfos + ", goodsStatus=" + goodsStatus
				+ ", goodsLike=" + goodsLike + ", showindex=" + showindex + ", recommend=" + recommend + ", created="
				+ created + ", value=" + value + "]";
	}
    
    
}