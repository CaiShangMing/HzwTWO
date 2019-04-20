package cn.hzw.dao;

import java.util.List;

import cn.hzw.pojo.Webset;

public interface WebsetMapper {

	//查询当前使用的网站基础信息
	public Webset selectById(Integer id)throws Exception;
	//查询所有网站基础信息的id
	public List<Integer> selectAll()throws Exception;
	//添加网站基础信息
	public int insertWebSet(Webset webSet)throws Exception;
	//通过网站标题查询是否有该网站信息套装
	public int selectByTheme(String webSetTheme) throws Exception;
	//通过ID锁定，修改网站基础信息套
	public int updateById(Webset webset) throws Exception;
}