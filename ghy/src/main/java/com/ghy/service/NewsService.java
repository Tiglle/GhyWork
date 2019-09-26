package com.ghy.service;

import java.util.List;

import com.ghy.model.News;
import com.ghy.page.Page;

public interface NewsService {

	public List<News> list(Page<News> page);

	public int selectPageSum(Page<News> page);
	
	public News selectById(int id);
	
	public News selectPrvNewsById(int id);
	
	public News selectNextNewsById(int id);

    Integer selectCountSum();

	List<News> selectRamdomByNum(Integer count);

	int deleteByPrimaryKey(Integer id);

	int insert(News news);
}
