package com.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.UserMapper;
import com.admin.model.User;
import com.admin.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	public User findUserByUsername(String username) {
		return userMapper.findUserByUsername(username);
	}

}
