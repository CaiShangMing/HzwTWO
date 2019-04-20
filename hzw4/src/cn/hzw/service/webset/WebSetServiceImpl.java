package cn.hzw.service.webset;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hzw.dao.WebsetMapper;
import cn.hzw.pojo.Webset;
@Service(value="WebSetService")
public class WebSetServiceImpl implements WebSetService {

	@Resource
	private WebsetMapper webSetMapper;
	//通过ID寻找对于的网站基础信息套装
	@Override
	public Webset findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return webSetMapper.selectById(id);
	}

	//查询所有网站基础信息套装总量
	@Override
	public List<Integer> findAll() throws Exception {
		// TODO Auto-generated method stub
		return webSetMapper.selectAll();
	}

	//添加网站基础信息套装
	@Override
	public int addWebSet(Webset webSet) throws Exception {
		// TODO Auto-generated method stub
		return webSetMapper.insertWebSet(webSet);
	}

	//通过标题查询是否有对应的网站基础信息套装
	@Override
	public int findByWebSetTheme(String webSetTheme) throws Exception {
		// TODO Auto-generated method stub
		return webSetMapper.selectByTheme(webSetTheme);
	}
	
	//通过ID锁定，修改网站基础信息套
	@Override
	public int modifyById(Webset newWebSet) throws Exception {
		// TODO Auto-generated method stub
		return webSetMapper.updateById(newWebSet);
	}

	
}
