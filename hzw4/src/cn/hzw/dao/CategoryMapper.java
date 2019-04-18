package cn.hzw.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.hzw.pojo.Category;

public interface CategoryMapper {

	//添加分类
	public int insertCategory(Category category)throws Exception;
	//查询所有分类
	public List<Category> selectAll()throws Exception;
	//根据页码查询分类
	public List<Category> selectByCurrent(@Param(value="currentPage")Integer currentPage,@Param(value="pageSize")Integer pageSize)throws Exception;
	//查询所有分类的个数
	public int selectCount()throws Exception;
	//根据名字寻找标题
	public int selectByName(@Param(value="context")String context)throws Exception;
}