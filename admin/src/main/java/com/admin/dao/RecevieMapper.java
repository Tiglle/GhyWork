package com.admin.dao;

import com.admin.model.Recevie;

public interface RecevieMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Recevie record);

    int insertSelective(Recevie record);

    Recevie selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Recevie record);

    int updateByPrimaryKey(Recevie record);
    
    int selectCount();
    
    void deleteAll();
}