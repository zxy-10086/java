package com.zxy.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zxy.dao.UserDao;
import com.zxy.pojo.User;
import com.zxy.service.UserService;




@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	@Override
	public Integer dologin(User user) {
		// TODO Auto-generated method stub
		return userDao.dologin(user);
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}
}
