package cn.hzw.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.hzw.pojo.Category;
import cn.hzw.pojo.User_role;
import cn.hzw.service.category.CategoryService;
import cn.hzw.util.Constant;
import cn.hzw.util.Page;

@Controller
public class CategoryController {

	private Logger logger=Logger.getLogger(CategoryController.class);
	@Resource
	private CategoryService categoryService;
	//内容分类管理
	@RequestMapping("/categoryManage")
	public String categoryManage(@RequestParam(value="currentPage",required=false)Integer currentPage,Model model,HttpSession session){
		try {
			if (null != session.getAttribute(Constant.USER_SESSION)) {
				User_role user = (User_role) session.getAttribute(Constant.USER_SESSION);
				if (user.getId() == 1) {
					Page categoryPage = new Page();
					categoryPage.setTotalCount(categoryService.findCount());
					categoryPage.setTotalPage();
					if (null != currentPage) {
						categoryPage.setCurrentPage(currentPage);
					}
					List<Category> categoryList = new ArrayList<Category>();
					categoryList = categoryService.findByCurrent((categoryPage.getCurrentPage() - 1)*categoryPage.getPageSize(),categoryPage.getPageSize());
					model.addAttribute("categoryList", categoryList);
					model.addAttribute("categoryPage", categoryPage);
					return "categoryManage/categoryManage";
				}
			}
			return "loginAndRegister/login";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("categoryManage出错了");
			return "common/error";
		}

	}
	//添加分类
	@RequestMapping(value="/addCategory",method=RequestMethod.POST)
	@ResponseBody
	public Object addCategory(Category category,Model model){
		try {
			if(categoryService.findByName(category.getContext())>0){
				model.addAttribute(Constant.CATEGORYMESSAGE, "repeat");
			}else{
				if(categoryService.addCategory(category)>0){
					model.addAttribute(Constant.CATEGORYMESSAGE, "ok");
				}else{
					model.addAttribute(Constant.CATEGORYMESSAGE,"fail");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("addCategory出错了");
			model.addAttribute(Constant.CATEGORYMESSAGE, "error");
		}
		return JSONArray.toJSONString(model);
	}
	//添加标题失焦验证
	@RequestMapping(value="/addCategoryBlur",method=RequestMethod.POST)
	@ResponseBody
	public Object addCategoryBlur(Category category,Model model){
		try {
			if(categoryService.findByName(category.getContext())>0){
				model.addAttribute(Constant.ADDCATEGORYBLURMESSAGE, "fail");
			}else{
				model.addAttribute(Constant.ADDCATEGORYBLURMESSAGE, "ok");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("addCategoryBlur出错了");
			model.addAttribute(Constant.ADDCATEGORYBLURMESSAGE, "error");
		}
		return JSONArray.toJSONString(model);
	}
}
