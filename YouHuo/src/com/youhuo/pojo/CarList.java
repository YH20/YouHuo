package com.youhuo.pojo;

/**
 * YH_CAR_LIST
 * 
 * @author sunrise
 * @version 1.0.0 2019-11-23
 */
public class CarList implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -1555212579079255729L;

    /* This code was generated by TableGo tools, mark 1 begin. */

    /** 购物车里的商品信息 */
    private Long liId;

    /** 商品id */
    private Long goodsId;

    /** 商品数量 */
    private Integer nums;

    /** 商品颜色 */
    private String color;

    /** 商品尺寸 */
    private String size;

    /** 商品价格 */
    private Double carPrice;

    /** 商品小计价格 */
    private Double carSubtotal;

    /** 购物车id */
    private Long carId;

    /** 备用字段 */
    private String value;

    public CarList() {
		// TODO Auto-generated constructor stub
	}
    
    public CarList(Long liId, Long goodsId, Integer nums, String color, String size, Double carPrice,
			Double carSubtotal, Long carId, String value) {
		super();
		this.liId = liId;
		this.goodsId = goodsId;
		this.nums = nums;
		this.color = color;
		this.size = size;
		this.carPrice = carPrice;
		this.carSubtotal = carSubtotal;
		this.carId = carId;
		this.value = value;
	}

	/**
     * 获取购物车里的商品信息
     * 
     * @return 购物车里的商品信息
     */
    public Long getLiId() {
        return this.liId;
    }

    /**
     * 设置购物车里的商品信息
     * 
     * @param liId
     *          购物车里的商品信息
     */
    public void setLiId(Long liId) {
        this.liId = liId;
    }

    /**
     * 获取商品id
     * 
     * @return 商品id
     */
    public Long getGoodsId() {
        return this.goodsId;
    }

    /**
     * 设置商品id
     * 
     * @param goodsId
     *          商品id
     */
    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * 获取商品数量
     * 
     * @return 商品数量
     */
    public Integer getNums() {
        return this.nums;
    }

    /**
     * 设置商品数量
     * 
     * @param nums
     *          商品数量
     */
    public void setNums(Integer nums) {
        this.nums = nums;
    }

    /**
     * 获取商品颜色
     * 
     * @return 商品颜色
     */
    public String getColor() {
        return this.color;
    }

    /**
     * 设置商品颜色
     * 
     * @param color
     *          商品颜色
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * 获取商品尺寸
     * 
     * @return 商品尺寸
     */
    public String getSize() {
        return this.size;
    }

    /**
     * 设置商品尺寸
     * 
     * @param size
     *          商品尺寸
     */
    public void setSize(String size) {
        this.size = size;
    }

    /**
     * 获取商品价格
     * 
     * @return 商品价格
     */
    public Double getCarPrice() {
        return this.carPrice;
    }

    /**
     * 设置商品价格
     * 
     * @param carPrice
     *          商品价格
     */
    public void setCarPrice(Double carPrice) {
        this.carPrice = carPrice;
    }

    /**
     * 获取商品小计价格
     * 
     * @return 商品小计价格
     */
    public Double getCarSubtotal() {
        return this.carSubtotal;
    }

    /**
     * 设置商品小计价格
     * 
     * @param carSubtotal
     *          商品小计价格
     */
    public void setCarSubtotal(Double carSubtotal) {
        this.carSubtotal = carSubtotal;
    }

    /**
     * 获取购物车id
     * 
     * @return 购物车id
     */
    public Long getCarId() {
        return this.carId;
    }

    /**
     * 设置购物车id
     * 
     * @param carId
     *          购物车id
     */
    public void setCarId(Long carId) {
        this.carId = carId;
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
		return "CarList [liId=" + liId + ", goodsId=" + goodsId + ", nums=" + nums + ", color=" + color + ", size="
				+ size + ", carPrice=" + carPrice + ", carSubtotal=" + carSubtotal + ", carId=" + carId + ", value="
				+ value + "]";
	}
    
}