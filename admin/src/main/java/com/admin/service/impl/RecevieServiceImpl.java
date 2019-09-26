package com.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.RecevieMapper;
import com.admin.service.RecevieService;
@Service
public class RecevieServiceImpl implements RecevieService{

	@Autowired
	private RecevieMapper recevieMapper;

	public int selectCount() {
		return recevieMapper.selectCount();
	}

	public void deleteAll() {
		recevieMapper.deleteAll();
	}
	
}
