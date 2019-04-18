package cn.hzw.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hzw.service.webset.WebSetService;

@Controller()
public class WebSetController {

	@Resource
	private WebSetService webSetService;
	//查询网站信息套装数量
	/*@RequestMapping("")*/
}
