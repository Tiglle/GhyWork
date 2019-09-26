package com.ghy.dao;

import com.ghy.model.Rcevie;

public interface RcevieMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Rcevie record);

    int insertSelective(Rcevie record);

    Rcevie selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Rcevie record);

    int updateByPrimaryKey(Rcevie record);
}