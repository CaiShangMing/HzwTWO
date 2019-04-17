package cn.hzw.service.category;

import java.util.List;

import cn.hzw.pojo.Category;

public interface CategoryService {

	//添加分类
	public int addCategory(Category category)throws Exception;
	//查询所有分类
	public List<Category> findAll()throws Exception;
	//根据当前页码查询分类
	public List<Category> findByCurrent(Integer currentPage,Integer pageSize)throws Exception;
	//查询所有分类的总数
	public int findCount()throws Exception;
	//根据名字寻找标题
	public int findByName(String context)throws Exception;
}
