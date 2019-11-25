package com.youhuo.test;

import com.youhuo.db.DBHelper;

/**
 * 数据库连接测试
 * @author sunrise
 *
 */
public class ConnectionTest {
	public static void main(String[] args) {
		System.out.println(DBHelper.getConnection());
	}
}
