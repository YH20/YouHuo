package com.youhuo.dao;

import java.sql.Connection;
import java.util.List;

import com.youhuo.pojo.Address;

/**
 * Address表操作接口
 * 收货地址
 * @author sunrise
 *
 */
public interface AddressDao {
	/**
	 * 增加收货地址
	 * @param conn
	 * @param address
	 * @return
	 */
	public boolean  insertAddress(Connection conn,Address address);
	
	/**
	 * 删除收货地址
	 * @param conn
	 * @param address
	 * @return
	 */
	public boolean deleteAddress(Connection conn,Address address);
	/**
	 * 更新收货地址
	 * @param conn
	 * @param address
	 * @return
	 */
	public boolean updateAddress(Connection conn,Address address);
	/**
	 * 根据ID查询收货地址
	 * @param conn
	 * @param add_id
	 * @return
	 */
	public Address selectByID(Connection conn,long add_id);
	/**
	 * 查询所有收货地址
	 * @param conn
	 * @return
	 */
	public List<Address> selectAll(Connection conn);
}
