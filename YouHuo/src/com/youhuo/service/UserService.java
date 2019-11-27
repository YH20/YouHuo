package com.youhuo.service;

import com.youhuo.pojo.ShoppingCar;
import com.youhuo.pojo.User;

public interface UserService {
	//插入数据
	public boolean addUser(User user,ShoppingCar shoppingcar);
	
}
