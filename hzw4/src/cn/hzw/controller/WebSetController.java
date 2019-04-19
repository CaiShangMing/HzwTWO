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
					model.addAttribute(Constant.CURRENTWEBSET, currentWebSet);
					model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "ok");
				}
				return JSONArray.toJSONString(model);
			}else{
				model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "fail");
				return JSONArray.toJSONString(model);
			}			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("=========selectWebSetId出错了===========");
			model.addAttribute(Constant.CHANGEWEBSETMESSAGE, "error");
			return JSONArray.toJSONString(model);
		}
	}
}
