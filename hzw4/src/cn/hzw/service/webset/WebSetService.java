package cn.hzw.service.webset;

import java.util.List;

import cn.hzw.pojo.Webset;

public interface WebSetService {

	//通过ID寻找对于的网站信息
	public Webset findById(Integer id) throws Exception;
	//查询网站基础信息的总量
	public List<Integer> findAll() throws Exception;
	//添加网站基础信息套装
	public int addWebSet(Webset webSet)throws Exception;
	//通过标题查询是否有对应的网站信息套装
	public int findByWebSetTheme(String webSetTheme) throws Exception;
	//通过ID锁定，修改网站基础信息套
	public int modifyById(Webset newWebSet)throws Exception;
}
