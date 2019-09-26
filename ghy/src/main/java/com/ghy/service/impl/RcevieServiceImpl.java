package com.ghy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ghy.dao.RcevieMapper;
import com.ghy.model.Rcevie;
import com.ghy.service.RcevieService;
@Service
public class RcevieServiceImpl implements RcevieService{

	@Autowired
	private RcevieMapper rcevieMapper;
	
	public int insertSelective(Rcevie record){
		return rcevieMapper.insertSelective(record);
	}
	
}
