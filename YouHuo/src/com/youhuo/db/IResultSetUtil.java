package com.youhuo.db;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 处理ResultSet的接口
 * 
 * 
 */
public interface IResultSetUtil {
	public Object doHandler(ResultSet rs) throws SQLException;
}
