package com.youhuo.pojo;

/**
 * GOODS_ATTR_GX
 * 
 * @author sunrise
 * @version 1.0.0 2019-11-23
 */
public class GoodsAttrGx implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = 2185173095790343754L;


    /** 商品与属性关系的ID */
    private long goodsattrId;

    /** 商品ID */
    private long goodsId;

    /** 属性名ID */
    private Integer attrNameId;

    /** 属性值ID */
    private Integer attrValueId;

    /** sku库存ID */
    private Long skuId;

    public GoodsAttrGx() {
    	
	}	
    
   
	public GoodsAttrGx(long goodsattrId, long goodsId, Integer attrNameId, Integer attrValueId, Long skuId) {
		super();
		this.goodsattrId = goodsattrId;
		this.goodsId = goodsId;
		this.attrNameId = attrNameId;
		this.attrValueId = attrValueId;
		this.skuId = skuId;
	}



	/**
     * 获取商品与属性关系的ID
     * 
     * @return 商品与属性关系的ID
     */
    public long getGoodsattrId() {
        return this.goodsattrId;
    }

    /**
     * 设置商品与属性关系的ID
     * 
     * @param goodsattrId
     *          商品与属性关系的ID
     */
    public void setGoodsattrId(long goodsattrId) {
        this.goodsattrId = goodsattrId;
    }

    /**
     * 获取商品ID
     * 
     * @return 商品ID
     */
    public long getGoodsId() {
        return this.goodsId;
    }

    /**
     * 设置商品ID
     * 
     * @param goodsId
     *          商品ID
     */
    public void setGoodsId(long goodsId) {
        this.goodsId = goodsId;
    }

    /**
     * 获取属性名ID
     * 
     * @return 属性名ID
     */
    public Integer getAttrNameId() {
        return this.attrNameId;
    }

    /**
     * 设置属性名ID
     * 
     * @param attrNameId
     *          属性名ID
     */
    public void setAttrNameId(Integer attrNameId) {
        this.attrNameId = attrNameId;
    }

    /**
     * 获取属性值ID
     * 
     * @return 属性值ID
     */
    public Integer getAttrValueId() {
        return this.attrValueId;
    }

    /**
     * 设置属性值ID
     * 
     * @param attrValueId
     *          属性值ID
     */
    public void setAttrValueId(Integer attrValueId) {
        this.attrValueId = attrValueId;
    }

    /**
     * 获取sku库存ID
     * 
     * @return sku库存ID
     */
    public Long getSkuId() {
        return this.skuId;
    }

    /**
     * 设置sku库存ID
     * 
     * @param skuId
     *          sku库存ID
     */
    public void setSkuId(Long skuId) {
        this.skuId = skuId;
    }

	@Override
	public String toString() {
		return "GoodsAttrGx [goodsattrId=" + goodsattrId + ", goodsId=" + goodsId + ", attrNameId=" + attrNameId
				+ ", attrValueId=" + attrValueId + ", skuId=" + skuId + "]";
	}

}