package cn.hzw.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hzw.pojo.Webset;
import cn.hzw.service.webset.WebSetService;
import cn.hzw.util.Constant;

@Controller()
public class CommonController {

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
		List<Integer> allWebSetId=new ArrayList<Integer>();
		allWebSetId=webSetService.findAll();
		Webset currentWebSet=webSetService.findById(1);
		session.setAttribute(Constant.ALLWEBSETID, allWebSetId);
		session.setAttribute(Constant.CURRENTWEBSET, currentWebSet);
		return "common/main";
	}
	//3.主页
	@RequestMapping("/")
	public String mainTwo(){
		return "common/main";
	}
	
}
