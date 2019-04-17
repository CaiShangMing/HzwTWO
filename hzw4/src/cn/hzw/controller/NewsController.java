package cn.hzw.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.hzw.pojo.News;
import cn.hzw.pojo.User_role;
import cn.hzw.service.news.NewsService;
import cn.hzw.util.Constant;
import cn.hzw.util.Page;

@Controller()
public class NewsController {

	private Logger logger=Logger.getLogger(NewsController.class);
	@Resource
	private NewsService newsService;
	//查询所有的内容
	//通过页码查询内容
	@RequestMapping(value="/contextManage")
	public String contextManage(Model model,HttpSession session,@RequestParam(value="currentPage",required=false)Integer currentPage){
		try {
			if(null!=session.getAttribute(Constant.USER_SESSION)){
				User_role user=(User_role)session.getAttribute(Constant.USER_SESSION);
				if(user.getId()==1){
					List<News> newsList=new ArrayList<News>();
					Page newsPage=new Page();
					int count=newsService.findCount();
					newsPage.setTotalCount(count);
					newsPage.setTotalPage();
					if(null!=currentPage){
						newsPage.setCurrentPage(currentPage);
					}
					newsList=newsService.findByCurrentPage((newsPage.getCurrentPage()-1)*newsPage.getPageSize(), newsPage.getPageSize());
					model.addAttribute("newsList", newsList);
					model.addAttribute("newsPage", newsPage);
					return "/contextManage/contextManage";
				}else{
					return "common/main";
				}
			}else{
				return "loginAndRegister/login";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info(e);
			logger.info("contextManage出错了");
			return "common/error";
		}
	}
	//添加内容页
	@RequestMapping("/addContextPage")
	public String addContextPage(){
		return "/contextManage/addContextPage";
	}
}
