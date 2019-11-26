package com.youhuo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.youhuo.dao.UserDao;
import com.youhuo.db.DBHelper;
import com.youhuo.pojo.User;
import com.youhuo.util.StringHelper;
/**
 * User表DAO操作实现
 * @author sunrise
 *
 */
public class UserDaoImpl implements UserDao{
	/**
	 * 使用log日志
	 */
	private static Logger log = Logger.getLogger(UserDaoImpl.class);
	/**
	 * 增加用户  14字段
	 * @param conn
	 * @param user
	 * @return
	 */
	@Override
	public boolean insertUser(Connection conn, User user) {
		String sql = "insert into yh_user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
		  ps =	conn.prepareStatement(sql);
		  //用uuid
//		  ps.setString(1, user.getId());
		  ps.setString(1, StringHelper.getUUID());
		  ps.setString(2, user.getUserName());
		  ps.setString(3, user.getUserPass());
		  ps.setString(4, user.getUserBirthday());
		  //ps.setInt(5, user.getSex());
		  ps.setInt(5, 0);
		  ps.setString(6, user.getPhone());
		  ps.setString(7, user.getEmail());
		  ps.setInt(8, user.getUserType());
		  ps.setString(9, user.getUserImg());
		  ps.setInt(10, user.getQuestionId());
		  ps.setString(11, user.getQuestionAnswer());
		  //Long型
		  ps.setLong(12, user.getCarId());
		  //ps.setString(13, user.getCreated());
		  ps.setString(13, StringHelper.getCurrentFormatDate());
		  ps.setString(14, user.getNewvalue());
		 int n =  ps.executeUpdate();
		 if(n>0) {
			 return true;
		 }
		} catch (SQLException e) {
			//log.debug(e);
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	
	/**
	 * 删除用户
	 * @param conn
	 * @param user
	 * @return
	 */
	@Override
	public boolean deleteUser(Connection conn, User user) {
		String sql = "delete from yh_user where id = ?";
		PreparedStatement ps = null;
		 try {
			 ps = conn.prepareStatement(sql);
			//System.out.println(user.getId());
		 ps.setString(1, user.getId());
		 int n = ps.executeUpdate();
		 //System.out.println(n);
		 if(n>0) {
			 return true;
		 }
		} catch (SQLException e) {
			//log.debug(e);
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);
		}
		return false;
	}
	/**
	 * 更新用户
	 * @param conn
	 * @param user
	 * @return
	 */
	@Override
	public boolean updateUser(Connection conn, User user) {
		System.out.println("进入了更新");
		/**
		 * 根据ID更新   用户名和ID不能被更新  13字段 
		 */
		String sql = "update yh_user set user_pass=?,user_birthday=?,"
				+ "sex=?,phone=?,email=?,user_type=?,user_img=?,"
				+ "question_id=?,question_answer=?,car_id=?,"
				+ "created=?,newvalue=? where id = ?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserPass());
			ps.setString(2, user.getUserBirthday());
			ps.setInt(3, user.getSex());
			ps.setString(4, user.getPhone());
			ps.setString(5, user.getEmail());
			ps.setInt(6, user.getUserType());
			ps.setString(7, user.getUserImg());
			ps.setInt(8, user.getQuestionId());
			ps.setString(9, user.getQuestionAnswer());
			//Long型
			ps.setLong(10, user.getCarId());
			ps.setString(11, user.getCreated());
			ps.setString(12, user.getNewvalue());
			//用户ID
			ps.setString(13, user.getId());
		   int n = ps.executeUpdate();
		   System.out.println(n);
		   if(n>0) {
			   return true;
		   }
		} catch (SQLException e) {
			//log.debug(e);
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, null);;
		}
		return false;
	}
	/**
	 * 根据ID查询用户
	 * @param conn
	 * @param userid
	 * @return
	 */
	@Override
	public User selectByID(Connection conn, String userid) {
		
		String sql = "select * from yh_user where id = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
		    rs = ps.executeQuery();
		    if(rs.next()) {
		    	user = new User();
		    	user.setId(rs.getString("id"));
		    	user.setUserName(rs.getString("user_name"));
		    	user.setUserPass(rs.getString("user_pass"));
		    	user.setUserBirthday(rs.getString("user_birthday"));
		    	user.setSex(rs.getInt("sex"));
		    	user.setPhone(rs.getString("phone"));
		    	user.setEmail(rs.getString("email"));
		    	user.setUserType(rs.getInt("user_type"));
		    	user.setUserImg(rs.getString("user_img"));
		    	user.setQuestionId(rs.getInt("question_id"));
		    	user.setQuestionAnswer(rs.getString("question_answer"));
		    	//Long型
		    	user.setCarId(rs.getLong("car_id"));
		    	user.setCreated(rs.getString("created"));
		    	user.setNewvalue(rs.getString("newvalue"));
		    }
		} catch (SQLException e) {
			//log.debug(e);
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps,rs);
		}
		return user;
	}
	/**
	 * 查询所有用户
	 * @param conn
	 * @return
	 */
	@Override
	public List<User> selectAll(Connection conn) {
		List<User> list = new ArrayList<User>();
		User user = null;
		String sql = "select * from yh_user";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			 ps =  conn.prepareStatement(sql);
			 rs = ps.executeQuery();
			 while(rs.next()) {
					 user = new User();
					 user.setId(rs.getString("id"));
			    	 user.setUserName(rs.getString("user_name"));
			    	 user.setUserPass(rs.getString("user_pass"));
			    	 user.setUserBirthday(rs.getString("user_birthday"));
			    	 user.setSex(rs.getInt("sex"));
			    	 user.setPhone(rs.getString("phone"));
			    	 user.setEmail(rs.getString("email"));
			    	 user.setUserType(rs.getInt("user_type"));
			    	 user.setUserImg(rs.getString("user_img"));
			    	 user.setQuestionId(rs.getInt("question_id"));
			    	 user.setQuestionAnswer(rs.getString("question_answer"));
			    	 //Long型
			    	 user.setCarId(rs.getLong("car_id"));
			    	 user.setCreated(rs.getString("created"));
			    	 user.setNewvalue(rs.getString("newvalue"));
			    	 list.add(user);
			 }
		} catch (SQLException e) {
			//log.debug(e);
			e.printStackTrace();
		}finally {
			DBHelper.closeResoues(ps, rs);
		}
		return list;
	}
		
		
}
