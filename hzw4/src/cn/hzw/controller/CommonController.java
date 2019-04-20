package cn.hzw.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.hzw.pojo.Webset;
import cn.hzw.service.webset.WebSetService;
import cn.hzw.util.Constant;

@Controller()
public class CommonController {

	private  Logger logger=Logger.getLogger(CommonController.class); 
	@Resource 
	private WebSetService webSetService;
	//1.出错页面
	@RequestMapping("/error")
	public String error(){
		return "common/error";
	}
	//2.主页
	@RequestMapping("/main")
	public String mainOne(HttpSession session){
		//第一个：全局对象webset
		try {
			Webset currentWebSet=null;
			ServletContext application=session.getServletContext();
			if(null==application.getAttribute(Constant.CURRENTWEBSETID)){
				currentWebSet=webSetService.findById(1);	
			}else{
				currentWebSet=webSetService.findById((Integer)application.getAttribute(Constant.CURRENTWEBSETID));	
			}			
			application.setAttribute(Constant.CURRENTWEBSET, currentWebSet);
			//为了在进入webset的时候默认选择已经选取的webset套装，在这里使用全局对象保存一个ID信息
			application.setAttribute(Constant.CURRENTWEBSETID, currentWebSet.getWebsetid());
			return "common/main";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("=======mianOne出错了=========");
			return "common/error";
		}
	}
	//3.主页
	@RequestMapping("/")
	public String mainTwo(){
		return "common/main";
	}
	
}
