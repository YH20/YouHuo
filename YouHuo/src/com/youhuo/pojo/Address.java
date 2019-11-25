package com.youhuo.pojo;

/**
 * YH_ADDRESS
 * 
 * @author sunrise
 * @version 1.0.0 2019-11-23
 */
public class Address implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = 5485763220653353095L;


    /** 收货地址ID */
    private Long addId;

    /** 收货人 */
    private String conisgnee;

    /** 收货人电话号码 */
    private String phonenum;

    /** 省 */
    private String receiverState;

    /** 市 */
    private String receiverCity;

    /** 区(县) */
    private String receiverDistrict;

    /** 详细地址 */
    private String receiverAddress;
    
    /**邮编*/
    private String receiverPostcode;
    /** 收货状态(1为默认地址，2为普通地址) */
    private int receiverStatus;

    /** 收货地址创建时间 */
    private String created;

    /** 用户ID */
    private String userId;

    public Address() {
		// TODO Auto-generated constructor stub
	}
    
    

	public Address(Long addId, String conisgnee, String phonenum, String receiverState, String receiverCity,
			String receiverDistrict, String receiverAddress, String receiverPostcode, int receiverStatus,
			String created, String userId) {
		super();
		this.addId = addId;
		this.conisgnee = conisgnee;
		this.phonenum = phonenum;
		this.receiverState = receiverState;
		this.receiverCity = receiverCity;
		this.receiverDistrict = receiverDistrict;
		this.receiverAddress = receiverAddress;
		this.receiverPostcode = receiverPostcode;
		this.receiverStatus = receiverStatus;
		this.created = created;
		this.userId = userId;
	}



	/**
     * 获取收货地址ID
     * 
     * @return 收货地址ID
     */
    public final Long getAddId() {
        return this.addId;
    }

    /**
     * 设置收货地址ID
     * 
     * @param addId
     *          收货地址ID
     */
    public final void setAddId(Long addId) {
        this.addId = addId;
    }

    /**
     * 获取收货人
     * 
     * @return 收货人
     */
    public final String getConisgnee() {
        return this.conisgnee;
    }

    /**
     * 设置收货人
     * 
     * @param conisgnee
     *          收货人
     */
    public final void setConisgnee(String conisgnee) {
        this.conisgnee = conisgnee;
    }

    /**
     * 获取收货人电话号码
     * 
     * @return 收货人电话号码
     */
    public final String getPhonenum() {
        return this.phonenum;
    }

    /**
     * 设置收货人电话号码
     * 
     * @param phonenum
     *          收货人电话号码
     */
    public final void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    /**
     * 获取省
     * 
     * @return 省
     */
    public final String getReceiverState() {
        return this.receiverState;
    }

    /**
     * 设置省
     * 
     * @param receiverState
     *          省
     */
    public final  void setReceiverState(String receiverState) {
        this.receiverState = receiverState;
    }

    /**
     * 获取市
     * 
     * @return 市
     */
    public final String getReceiverCity() {
        return this.receiverCity;
    }

    /**
     * 设置市
     * 
     * @param receiverCity
     *          市
     */
    public final void setReceiverCity(String receiverCity) {
        this.receiverCity = receiverCity;
    }

    /**
     * 获取区(县)
     * 
     * @return 区(县)
     */
    public final String getReceiverDistrict() {
        return this.receiverDistrict;
    }

    /**
     * 设置区(县)
     * 
     * @param receiverDistrict
     *          区(县)
     */
    public final void setReceiverDistrict(String receiverDistrict) {
        this.receiverDistrict = receiverDistrict;
    }

    /**
     * 获取详细地址
     * 
     * @return 详细地址
     */
    public final String getReceiverAddress() {
        return this.receiverAddress;
    }

    /**
     * 设置详细地址
     * 
     * @param receiverAddress
     *          详细地址
     */
    public final void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }
    /**
     * 获取邮政编码
     * 
     * @return 邮政编码
     */
    public final String getReceiverPostcode() {
        return this.receiverPostcode;
    }

    /**
     * 设置邮政编码
     * 
     * @param receiverAddress
     *          邮政编码
     */
    public final void setReceiverPostcode(String receiverPostcode) {
        this.receiverPostcode = receiverPostcode;
    }
    /**
     * 获取收货状态(1为默认地址，2为普通地址)
     * 
     * @return 收货状态(1为默认地址
     */
    public final int getReceiverStatus() {
        return this.receiverStatus;
    }

    /**
     * 设置收货状态(1为默认地址，2为普通地址)
     * 
     * @param receiverStatus
     *          收货状态(1为默认地址
     */
    public final void setReceiverStatus(int receiverStatus) {
        this.receiverStatus = receiverStatus;
    }

    /**
     * 获取收货地址创建时间
     * 
     * @return 收货地址创建时间
     */
    public final String getCreated() {
        return this.created;
    }

    /**
     * 设置收货地址创建时间
     * 
     * @param created
     *          收货地址创建时间
     */
    public final void setCreated(String created) {
        this.created = created;
    }

    /**
     * 获取用户ID
     * 
     * @return 用户ID
     */
    public final String getUserId() {
        return this.userId;
    }

    /**
     * 设置用户ID
     * 
     * @param userId
     *          用户ID
     */
    public final void setUserId(String userId) {
        this.userId = userId;
    }


	@Override
	public String toString() {
		return "Address [addId=" + addId + ", conisgnee=" + conisgnee + ", phonenum=" + phonenum + ", receiverState="
				+ receiverState + ", receiverCity=" + receiverCity + ", receiverDistrict=" + receiverDistrict
				+ ", receiverAddress=" + receiverAddress + ", receiverPostcode=" + receiverPostcode
				+ ", receiverStatus=" + receiverStatus + ", created=" + created + ", userId=" + userId + "]";
	}

    
}