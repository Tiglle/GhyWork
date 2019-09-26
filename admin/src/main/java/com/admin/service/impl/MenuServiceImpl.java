package com.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.MenuMapper;
import com.admin.model.Menu;
import com.admin.service.MenuService;
@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuMapper menuMapper;
	
	public List<Menu> findMenuByUid(Integer uid) {
		return menuMapper.findMenuByUid(uid);
	}

}
