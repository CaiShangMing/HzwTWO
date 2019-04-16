package cn.hzw.service.news;

import java.util.List;

import cn.hzw.pojo.News;

public interface NewsService {

	public List<News> findAll() throws Exception;
	public List<News> findByCurrentPage(Integer currentPage,Integer pageSize) throws Exception; 
	public int findCount() throws Exception;
	
}
