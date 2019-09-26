package com.ghy.dao;

import java.util.List;

import com.ghy.model.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);
    
    News selectPrvNewsById(Integer id);
    
    News selectNextNewsById(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    List<News> selectByPage(int start,int end);

	int selectCountSum();

    List<News> selectRamdomByNum(Integer count);
}