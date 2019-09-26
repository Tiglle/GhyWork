package com.ghy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ghy.dao.NewsMapper;
import com.ghy.model.News;
import com.ghy.page.Page;
import com.ghy.service.NewsService;
@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsMapper newsMapper;

	public List<News> list(Page<News> page) {
		int start = (page.getPageNow()-1)*page.getPageSize();
		int end = page.getPageSize();
		return newsMapper.selectByPage(start,end);
	}

	public int selectPageSum(Page<News> page) {
		int count = newsMapper.selectCountSum();
		return (count-1)/page.getPageSize()+1;
	}

	public News selectById(int id) {
		return newsMapper.selectByPrimaryKey(id);
	}

	public News selectPrvNewsById(int id) {
		return newsMapper.selectPrvNewsById(id);
	}
	
	public News selectNextNewsById(int id) {
		return newsMapper.selectNextNewsById(id);
	}

    public Integer selectCountSum() {
		return newsMapper.selectCountSum();
    }

	public List<News> selectRamdomByNum(Integer count) {
		return newsMapper.selectRamdomByNum(count);
	}

	public int deleteByPrimaryKey(Integer id) {
		return newsMapper.deleteByPrimaryKey(id);
	}

	public int insert(News news) {
		return newsMapper.insert(news);
	}

}
