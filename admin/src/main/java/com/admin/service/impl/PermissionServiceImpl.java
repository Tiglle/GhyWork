package com.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.PermissionMapper;
import com.admin.service.PermissionService;
@Service
public class PermissionServiceImpl implements PermissionService {
	
	@Autowired
	private PermissionMapper permissionMapper;

	public List<String> findPermissionsByUid(Integer uid) {
		return permissionMapper.findPermissionsByUid(uid);
	}
	
}
