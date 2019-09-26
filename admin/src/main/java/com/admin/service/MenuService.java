package com.admin.service;

import java.util.List;

import com.admin.model.Menu;

public interface MenuService {

	public List<Menu> findMenuByUid(Integer uid);
	
}
