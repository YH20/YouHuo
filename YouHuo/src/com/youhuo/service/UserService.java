package com.youhuo.service;

import com.youhuo.pojo.ShoppingCar;
import com.youhuo.pojo.User;

public interface UserService {
	//插入数据
	public boolean addUser(User user,ShoppingCar shoppingcar);
	//验证数据是否存在
	public boolean selectByUser(String user);
	//用户登录
	public User loginUser(String user,String pass);
}
