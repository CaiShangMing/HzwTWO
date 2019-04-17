package cn.hzw.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
public class CommonController {

	//1.出错页面
	@RequestMapping("/error")
	public String error(){
		return "common/error";
	}
	//2.主页
	@RequestMapping("/main")
	public String mainOne(){
		return "common/main";
	}
	//3.主页
	@RequestMapping("/")
	public String mainTwo(){
		return "common/main";
	}
	
}
