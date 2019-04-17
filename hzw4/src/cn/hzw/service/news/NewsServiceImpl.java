package cn.hzw.service.news;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.hzw.dao.NewsMapper;
import cn.hzw.pojo.News;
@Service("NewsService")
public class NewsServiceImpl implements NewsService {

	@Resource
	private NewsMapper newsMapper;
	//查询所有内容
	@Override
	public List<News> findAll() throws Exception {
		// TODO Auto-generated method stub
		return newsMapper.selectAll();
	}
	//通过当前页面查询内容
	@Override
	public List<News> findByCurrentPage(Integer currentPage,Integer pageSize) throws Exception {
		// TODO Auto-generated method stub
		return newsMapper.selectByCurrentPage(currentPage, pageSize);
	}
	//查询总记录数
	@Override
	public int findCount() throws Exception {
		// TODO Auto-generated method stub
		return newsMapper.selectCount();
	}

}
