package com.admin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.NewsMapper;
import com.admin.model.News;
import com.admin.service.NewsService;
@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsMapper newsMapper;

	public int insertSelective(News record) {
		return newsMapper.insertSelective(record);
	}

}
