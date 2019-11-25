package com.youhuo.pojo;

/**
 * YH_OEDER_LIST
 * 
 * @author sunrise
 * @version 1.0.0 2019-11-23
 */
public class OrderList implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -4532021327645234712L;


    /** 订单与商品结合ID */
    private Long ordListId;

    /** 商品ID */
    private Long goodsId;

    /** 商品数量 */
    private Integer gNums;

    /** 商品颜色 */
    private String gColor;

    /** 商品尺寸 */
    private String gSize;

    /** 商品价格 */
    private Double gPrice;

    /** 商品小计价格 */
    private Double gSubtotal;

    /** 订单编号 */
    private Long orderinfoId;

    /** 备用字段 */
    private String value;

    public OrderList() {
		// TODO Auto-generated constructor stub
	}
    
    public OrderList(Long ordListId, Long goodsId, Integer gNums, String gColor, String gSize, Double gPrice,
			Double gSubtotal, Long orderinfoId, String value) {
		super();
		this.ordListId = ordListId;
		this.goodsId = goodsId;
		this.gNums = gNums;
		this.gColor = gColor;
		this.gSize = gSize;
		this.gPrice = gPrice;
		this.gSubtotal = gSubtotal;
		this.orderinfoId = orderinfoId;
		this.value = value;
	}

	/**
     * 获取订单与商品结合ID
     * 
     * @return 订单与商品结合ID
     */
    public Long getOrdListId() {
        return this.ordListId;
    }

    /**
     * 设置订单与商品结合ID
     * 
     * @param ordListId
     *          订单与商品结合ID
     */
    public void setOrdListId(Long ordListId) {
        this.ordListId = ordListId;
    }

    /**
     * 获取商品ID
     * 
     * @return 商品ID
     */
    public Long getGoodsId() {
        return this.goodsId;
    }

    /**
     * 设置商品ID
     * 
     * @param goodsId
     *          商品ID
     */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * 获取商品数量
     * 
     * @return 商品数量
     */
    public Integer getGNums() {
        return this.gNums;
    }

    /**
     * 设置商品数量
     * 
     * @param gNums
     *          商品数量
     */
    public void setGNums(Integer gNums) {
        this.gNums = gNums;
    }

    /**
     * 获取商品颜色
     * 
     * @return 商品颜色
     */
    public String getGColor() {
        return this.gColor;
    }

    /**
     * 设置商品颜色
     * 
     * @param gColor
     *          商品颜色
     */
    public void setGColor(String gColor) {
        this.gColor = gColor;
    }

    /**
     * 获取商品尺寸
     * 
     * @return 商品尺寸
     */
    public String getGSize() {
        return this.gSize;
    }

    /**
     * 设置商品尺寸
     * 
     * @param gSize
     *          商品尺寸
     */
    public void setGSize(String gSize) {
        this.gSize = gSize;
    }

    /**
     * 获取商品价格
     * 
     * @return 商品价格
     */
    public Double getGPrice() {
        return this.gPrice;
    }

    /**
     * 设置商品价格
     * 
     * @param gPrice
     *          商品价格
     */
    public void setGPrice(Double gPrice) {
        this.gPrice = gPrice;
    }

    /**
     * 获取商品小计价格
     * 
     * @return 商品小计价格
     */
    public Double getGSubtotal() {
        return this.gSubtotal;
    }

    /**
     * 设置商品小计价格
     * 
     * @param gSubtotal
     *          商品小计价格
     */
    public void setGSubtotal(Double gSubtotal) {
        this.gSubtotal = gSubtotal;
    }

    /**
     * 获取订单编号
     * 
     * @return 订单编号
     */
    public Long getOrderinfoId() {
        return this.orderinfoId;
    }

    /**
     * 设置订单编号
     * 
     * @param orderinfoId
     *          订单编号
     */
    public void setOrderinfoId(Long orderinfoId) {
        this.orderinfoId = orderinfoId;
    }

    /**
     * 获取备用字段
     * 
     * @return 备用字段
     */
    public String getValue() {
        return this.value;
    }

    /**
     * 设置备用字段
     * 
     * @param value
     *          备用字段
     */
    public void setValue(String value) {
        this.value = value;
    }

	@Override
	public String toString() {
		return "OederList [ordListId=" + ordListId + ", goodsId=" + goodsId + ", gNums=" + gNums + ", gColor=" + gColor
				+ ", gSize=" + gSize + ", gPrice=" + gPrice + ", gSubtotal=" + gSubtotal + ", orderinfoId="
				+ orderinfoId + ", value=" + value + "]";
	}
    
}