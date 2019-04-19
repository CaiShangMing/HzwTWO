package cn.hzw.controller;

import java.util.ArrayList;
import java.util.Arrays;
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

import cn.hzw.pojo.User_role;
import cn.hzw.pojo.Webset;
import cn.hzw.service.user.UserService;
import cn.hzw.service.webset.WebSetService;
import cn.hzw.util.Constant;
import cn.hzw.util.Page;

@Controller()
public class AdminController {

	private Logger logger=Logger.getLogger(AdminController.class);
	@Resource
	private UserService userService;
	@Resource
	private WebSetService webSetService;
	//1.后台主页（管理员和会员）
	@RequestMapping("/homePage")
	public String homePage(HttpSession session){
		if(session.getAttribute(Constant.USER_SESSION)!=null){
			User_role loginUser=(User_role)session.getAttribute(Constant.USER_SESSION);
			if(loginUser.getId()==1){
				return "adminManager/adminPage";
			}else{
				return "memberManager/memberPage";
			}
		}
		return "loginAndRegister/login";
	}
	//2.管理员对于网站基本信息设置页
	@RequestMapping("/webSet")
	public String webSet(HttpSession session){
		try {
			if(session.getAttribute(Constant.USER_SESSION)!=null){
				User_role loginUser=(User_role)session.getAttribute(Constant.USER_SESSION);
				if(loginUser.getId()==1){
					List<Integer> allWebSetId=new ArrayList<Integer>();
					allWebSetId=webSetService.findAll();
					session.setAttribute(Constant.ALLWEBSETID, allWebSetId);
					return "webSet";
				}
			}
			return "loginAndRegister/login";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("=====webSet出错了=======");
			return "error";
		}
	}
	//3.管理员管理会员信息页
	@RequestMapping("/changeMeb")
	public String changeMeb(HttpSession session,@RequestParam(value="currentPage",required=false)Integer currentPage,Model model){
		try {
			if(session.getAttribute(Constant.USER_SESSION)!=null){
				User_role loginUser=(User_role)session.getAttribute(Constant.USER_SESSION);
				if(loginUser.getId()==1){
					Page userPage=new Page();
					int count=userService.findAllUser();
					userPage.setTotalCount(count);
					userPage.setTotalPage();
					if(null!=currentPage){
						userPage.setCurrentPage(currentPage);
					}
					List<User_role> userList=new ArrayList<User_role>();
					userList=userService.findAllUserLimit((userPage.getCurrentPage()-1)*userPage.getPageSize(), userPage.getPageSize());
					session.setAttribute("userList", userList);
					session.setAttribute("userPage", userPage);
					return "adminManager/changeMeb";
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("changeMeb出错了");
			model.addAttribute(Constant.ERROR_MESSAGE, "出错了");
		}
		return "loginAndRegister/login";
	}
	//4.添加会员
	@RequestMapping("/addMeb")
	public String addMeb(HttpSession session){
		if(session.getAttribute(Constant.USER_SESSION)!=null){
			User_role loginUser=(User_role)session.getAttribute(Constant.USER_SESSION);
			if(loginUser.getId()==1){
				return "adminManager/addMeb";
			}
		}
		return "loginAndRegister/login";
	}
	//5.修改会员
	@RequestMapping("/modify")
	public String modify(Model model,HttpSession session,@RequestParam(value="id",required=false)Integer id){
		try {
			if(null!=session.getAttribute(Constant.USER_SESSION)){
				User_role loginUser=(User_role)session.getAttribute(Constant.USER_SESSION);
				if(loginUser.getId()==1){
					User_role modifyUser=userService.findById(id);
					session.setAttribute("modifyUser", modifyUser);
					return "adminManager/modifyMeb";
				}
				return "loginAndRegister/login";
			}
			return "loginAndRegister/login";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("modify出错了");
			model.addAttribute(Constant.ERROR_MESSAGE, "发生错误");
			return "loginAndRegister/login";
		}	
	}
	//6.修改会员信息
	@RequestMapping(value="/modifyUser",method=RequestMethod.POST)
	@ResponseBody
	public Object modifyUser(HttpSession session,Model model,@RequestParam(required=false)User_role newUser){
		try {
			if (userService.findByUserName(newUser.getUsername()) > 0) {
				model.addAttribute(Constant.MODIFY_MESSAGE, "nameExist");
			} else {
				if (userService.modifyUser(newUser) > 0) {
					model.addAttribute(Constant.MODIFY_MESSAGE, "ok");
				} else {
					model.addAttribute(Constant.MODIFY_MESSAGE, "fail");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("modifyUser出错了");
			model.addAttribute(Constant.MODIFY_MESSAGE, "发生错误，请稍等");
		}
		return JSONArray.toJSONString(model);	
	}
	//7.删除用户
	@RequestMapping(value="/delUser",method=RequestMethod.POST)
	@ResponseBody
	public Object delUser(HttpSession session,Model model,@RequestParam(required=false)Integer id){
		try {
			if (userService.delUser(id) > 0) {
				model.addAttribute(Constant.DEL_MESSAGE, "ok");
			} else {
				model.addAttribute(Constant.DEL_MESSAGE, "fail");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("delUser出错了");
			model.addAttribute(Constant.DEL_MESSAGE, "出错了");
		}
		return JSONArray.toJSONString(model);
	}
	//8.批量删除用户
	@RequestMapping(value="/checkDel",method=RequestMethod.POST)
	@ResponseBody
	public Object checkDel(HttpSession session,Model model,@RequestParam(value="userId[]",required=false)Integer[] userId){
		logger.info("进入了checkDel方法============");
		try {
			List<Integer> IdList = Arrays.asList(userId);
			for (int i = 0; i < IdList.size(); i++) {
				userService.delUser(IdList.get(i));
			}
			model.addAttribute(Constant.CHECK_DEL_MESSAGE, "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("checkDel出错了");
			model.addAttribute(Constant.CHECK_DEL_MESSAGE, "出错了");
		}
		return JSONArray.toJSONString(model);
	}
	//9.新闻测试页
	@RequestMapping("/newPage")
	public String newPage(){
		return "newPage";
	}
}
