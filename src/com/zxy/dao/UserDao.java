package com.zxy.dao;

import com.zxy.pojo.User;

public interface UserDao {
	// 登录
	public Integer dologin(User user);

	// 添加用户信息
	public int addUser(User user);
}
