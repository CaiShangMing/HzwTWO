package cn.hzw.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hzw.pojo.News;

public interface NewsMapper {
	//查询所有内容
	public List<News> selectAll();
	//根据页码查询内容
	public List<News> selectByCurrentPage(@Param(value="currentPage")Integer currentPage,@Param(value="pageSize")Integer pageSize);
	//查询总记录数
	public int selectCount();
}