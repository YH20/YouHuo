package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.youhuo.dao.AddressDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.Address;
/**
 * Address表操作实现类
 * 收货地址 
 * @author sunrise
 *
 */
public class AddressDaoImpl implements AddressDao{
	/**
	 * 增加收货地址 
	 * @param conn
	 * @param address
	 * @return
	 */
	@Override
	public boolean insertAddress(Connection conn, Address address) {
		/**
		 * 插入10个字段  ID自增
		 */
		String sql = "insert into yh_address(conisgnee,phonenum,receiver_state,receiver_city,"
				+ "receiver_district,receiver_address,receiver_postcode,receiver_status,created,user_id) values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, address.getConisgnee());
			ps.setString(2, address.getPhonenum());
			//省
			ps.setString(3, address.getReceiverState());
			ps.setString(4, address.getReceiverCity());
			ps.setString(5, address.getReceiverDistrict());
			ps.setString(6, address.getReceiverAddress());
			//邮编
			ps.setString(7, address.getReceiverPostcode());
			ps.setInt(8, address.getReceiverStatus());
			ps.setString(9, address.getCreated());
			ps.setString(10, address.getUserId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	/**
	 * 删除收货地址
	 * @param conn
	 * @param address
	 * @return
	 */
	@Override
	public boolean deleteAddress(Connection conn, Address address) {
		String sql = "delete from yh_address where add_id =?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, address.getAddId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}
	/**
	 * 更新收货地址
	 * @param conn
	 * @param address
	 * @return
	 */
	@Override
	public boolean updateAddress(Connection conn, Address address) {
		
		String sql = "update yh_address set conisgnee=?,phonenum=?,receiver_state=?,receiver_city=?," + 
					 	"receiver_district=?,receiver_address=?,receiver_postcode=?,"
					 	+ "receiver_status=?,created=?,user_id=? where add_id=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, address.getConisgnee());
			ps.setString(2, address.getPhonenum());
			//省
			ps.setString(3, address.getReceiverState());
			ps.setString(4, address.getReceiverCity());
			ps.setString(5, address.getReceiverDistrict());
			ps.setString(6, address.getReceiverAddress());
			//邮编
			ps.setString(7, address.getReceiverPostcode());
			ps.setInt(8, address.getReceiverStatus());
			ps.setString(9, address.getCreated());
			ps.setString(10, address.getUserId());
			//ID
			ps.setLong(11, address.getAddId());
			int n = ps.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		
		return false;
	}
	/**
	 * 根据ID查询收货地址
	 * @param conn
	 * @param add_id
	 * @return
	 */
	@Override
	public Address selectByID(Connection conn, long add_id) {
		String sql = "select * from yh_address where add_id=?";
		Address address = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setLong(1, add_id);
			rs = ps.executeQuery();
			if(rs.next()) {
				address = new Address();
				address.setAddId(rs.getLong("add_id"));
				address.setConisgnee(rs.getString("conisgnee"));
				address.setPhonenum(rs.getString("phonenum"));
				//省
				address.setReceiverState(rs.getString("receiver_state"));
				address.setReceiverCity(rs.getString("receiver_city"));
				address.setReceiverDistrict(rs.getString("receiver_district"));
				//详细地址
				address.setReceiverAddress(rs.getString("receiver_address"));
				address.setReceiverPostcode(rs.getString("receiver_postcode"));
				address.setReceiverStatus(rs.getInt("receiver_status"));
				address.setCreated(rs.getString("created"));
				address.setUserId(rs.getString("user_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return address;
	}
	/**
	 * 查询所有收货地址
	 * @param conn
	 * @return
	 */
	@Override
	public List<Address> selectAll(Connection conn) {
		String sql = "select * from yh_address";
		List<Address> list = new ArrayList<Address>();
		Address address = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				address = new Address();
				address.setAddId(rs.getLong("add_id"));
				address.setConisgnee(rs.getString("conisgnee"));
				address.setPhonenum(rs.getString("phonenum"));
				//省
				address.setReceiverState(rs.getString("receiver_state"));
				address.setReceiverCity(rs.getString("receiver_city"));
				address.setReceiverDistrict(rs.getString("receiver_district"));
				//详细地址
				address.setReceiverAddress(rs.getString("receiver_address"));
				address.setReceiverPostcode(rs.getString("receiver_postcode"));
				address.setReceiverStatus(rs.getInt("receiver_status"));
				address.setCreated(rs.getString("created"));
				address.setUserId(rs.getString("user_id"));
				list.add(address);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		
		return list;
	}

}
