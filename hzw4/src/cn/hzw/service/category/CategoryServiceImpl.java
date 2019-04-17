package cn.hzw.service.category;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import cn.hzw.dao.CategoryMapper;
import cn.hzw.pojo.Category;
@Service("CategoryService")
public class CategoryServiceImpl implements CategoryService {

	@Resource
	private CategoryMapper categoryMapper;
	//添加分类
	@Override
	public int addCategory(Category category) throws Exception {
		// TODO Auto-generated method stub
		return categoryMapper.insertCategory(category);
	}
	//查询所有分类
	@Override
	public List<Category> findAll() throws Exception {
		// TODO Auto-generated method stub
		return categoryMapper.selectAll();
	}
	//根据当前页码查询分类
	@Override
	public List<Category> findByCurrent(Integer currentPage,Integer pageSize) throws Exception {
		// TODO Auto-generated method stub
		return categoryMapper.selectByCurrent(currentPage, pageSize);
	}
	//查询所有分类的总数
	@Override
	public int findCount() throws Exception{
		// TODO Auto-generated method stub
		return categoryMapper.selectCount();
	}
	//根据名字寻找标题
	@Override
	public int findByName(String context) throws Exception {
		// TODO Auto-generated method stub
		return categoryMapper.selectByName(context);
	}

}
