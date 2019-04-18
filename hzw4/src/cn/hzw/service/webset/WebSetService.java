package cn.hzw.service.webset;

import java.util.List;

import cn.hzw.pojo.Webset;

public interface WebSetService {

	//通过ID寻找对于的网站信息
	public Webset findById(int id);
	//查询网站基础信息的总量
	public List<Integer> findAll();
	//添加网站基础信息套装
	public int addWebSet(Webset webSet);
}
