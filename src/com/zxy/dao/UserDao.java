package com.zxy.dao;

import com.zxy.pojo.User;

public interface UserDao {
	// ��¼
	public Integer dologin(User user);

	// ����û���Ϣ
	public int addUser(User user);
}
