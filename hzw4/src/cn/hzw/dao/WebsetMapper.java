package cn.hzw.dao;

import java.util.List;

import cn.hzw.pojo.Webset;

public interface WebsetMapper {

	//查询当前使用的网站基础信息
	public Webset selectById(int id)throws Exception;
	//查询网站基础信息的id
	public List<Integer> selectAll()throws Exception;
	//添加网站基础信息
	public int insertWebSet(Webset webSet)throws Exception;
	
}