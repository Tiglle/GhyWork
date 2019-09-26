package com.admin.service;

import java.util.List;

public interface PermissionService {

	public List<String> findPermissionsByUid(Integer uid);
	
}
