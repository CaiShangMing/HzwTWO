package cn.hzw.controller;

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

import cn.hzw.pojo.Webset;
import cn.hzw.service.webset.WebSetService;
import cn.hzw.util.Constant;

@Controller()
public class WebSetController {

	private Logger logger=Logger.getLogger(WebSetController.class);
	@Resource
	private WebSetService webSetService;
	//根据ID查询对应的网站基础信息套装
	@RequestMapping(value="/changeWebSetId",method=RequestMethod.POST)
	@ResponseBody
	public Object selectWebSetId(HttpSession session,Model model,@RequestParam(value="selectWebSetId")Integer selectWebSetId){
		try {
			Webset currentWebSet=(Webset)session.getAttribute(Constant.CURRENTWEBSET);
			if(null!=selectWebSetId){
				if(currentWebSet.getWebsetid()==selectWebSetId){
					model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "noChange");
				}else{
					currentWebSet=webSetService.findById(selectWebSetId);
					session.setAttribute(Constant.CURRENTWEBSET, currentWebSet);
					//为了在进入webset的时候默认选择已经选取的webset套装，在这里保存一个ID信息
					session.setAttribute(Constant.CURRENTWEBSETID, currentWebSet.getWebsetid());
					model.addAttribute(Constant.CURRENTWEBSET, currentWebSet);
					model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "ok");
				}
			}else{
				model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "fail");
			}		
			return JSONArray.toJSONString(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("=========selectWebSetId出错了===========");
			model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "error");
			return JSONArray.toJSONString(model);
		}
	}
	//添加网站基础信息套装
	@RequestMapping(value="/addWebSet",method=RequestMethod.POST)
	@ResponseBody
	public Object addWebSet(Webset webSet,HttpSession session,Model model){
		try {
			if(null!=webSet.getWebsettheme()){
				if(webSetService.findByWebSetTheme(webSet.getWebsettheme())>0){
					model.addAttribute(Constant.ADDWEBSETMESSAGE, "exist");
				}else{
					if(webSetService.addWebSet(webSet)>0){
						model.addAttribute(Constant.ADDWEBSETMESSAGE, "ok");
					}else{
						model.addAttribute(Constant.ADDWEBSETMESSAGE, "fail");
					}
				}
			}else{
				model.addAttribute(Constant.ADDWEBSETMESSAGE, "empty");
			}
			return JSONArray.toJSONString(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("=======addWebSet出错了==========");
			e.printStackTrace();
			model.addAttribute(Constant.ADDWEBSETMESSAGE, "error");
			return JSONArray.toJSONString(model);
		}
	}
	//通过ID锁定，修改被选定的基础信息套装
	@RequestMapping(value="/modifyWebSet",method=RequestMethod.POST)
	@ResponseBody
	public Object modifyWebSet(Webset webSet,Model model){
		try {
			if(webSetService.modifyById(webSet)>0){
				model.addAttribute(Constant.MODIFYWEBSETMESSAGE, "ok");
			}else{
				model.addAttribute(Constant.MODIFYWEBSETMESSAGE, "fail");
			}
			return JSONArray.toJSONString(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("========modifyWebSet出错了=========");
			model.addAttribute(Constant.MODIFYWEBSETMESSAGE, "error");
			return JSONArray.toJSONString(model);
		}
	}
}
