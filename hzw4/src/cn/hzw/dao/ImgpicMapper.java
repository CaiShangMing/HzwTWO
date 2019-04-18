package cn.hzw.dao;

import cn.hzw.pojo.Imgpic;

public interface ImgpicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Imgpic record);

    int insertSelective(Imgpic record);

    Imgpic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Imgpic record);

    int updateByPrimaryKey(Imgpic record);
}