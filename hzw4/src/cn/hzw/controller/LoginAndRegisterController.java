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

import cn.hzw.pojo.User_role;
import cn.hzw.service.user.UserService;
import cn.hzw.util.Constant;

@Controller()
public class LoginAndRegisterController {

	private Logger logger=Logger.getLogger(AdminController.class);
	@Resource
	private UserService userService;
	//1.登录页
	@RequestMapping("/login")
	public String login(){
		return "loginAndRegister/login";
	}
	//2.异步刷新验证登录名和密码
	@RequestMapping(value="/isLogin",produces="text/json;charset=UTF-8")
	@ResponseBody
	public Object isLogin(HttpSession session,Model model,User_role user){
		try {
			User_role loginUser=userService.findUser(user);
			if(null!=loginUser){
				session.setAttribute(Constant.USER_SESSION, loginUser);
				model.addAttribute(Constant.MESSAGE, "ok");
			}else{
				model.addAttribute(Constant.MESSAGE, "用户名或密码错误");
			}
			return JSONArray.toJSONString(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.info("=======isLogin出错了=======");
			model.addAttribute(Constant.BLUR_MESSAGE, "请稍后再试或联系管理员");
			return JSONArray.toJSONString(model);
		}
	}
	
	//3.跳转注册页
	@RequestMapping("/register")
	public String register(){
		return "loginAndRegister/register";
	}
	//4.异步失焦验证用户名是否存在
	@RequestMapping(value="/registerBlur",method=RequestMethod.POST)
	@ResponseBody
	public Object registerBlur(Model model,@RequestParam(value="username")String username){
		try {
			if(userService.findByUserName(username)>0){
				model.addAttribute(Constant.BLUR_MESSAGE, "fail");
			}else{
				model.addAttribute(Constant.BLUR_MESSAGE, "ok");
			}
			return JSONArray.toJSONString(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("registerBlur出错了");
			model.addAttribute(Constant.BLUR_MESSAGE, "请稍后再试或联系管理员");
			return JSONArray.toJSONString(model);
		}	
	}
	//5.异步验证注册提交信息
	@RequestMapping(value="/isRegister",method=RequestMethod.POST)
	@ResponseBody
	public Object isRegister(User_role newUser,Model model){
		try {
			if(userService.findByUserName(newUser.getUsername())>0){
				model.addAttribute(Constant.BLUR_MESSAGE, "nameExist");
			}else{
				if(userService.addUser(newUser)>0){
					model.addAttribute(Constant.BLUR_MESSAGE, "ok");
				}else{
					model.addAttribute(Constant.BLUR_MESSAGE, "fail");
				}
			}
			return JSONArray.toJSONString(model);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.info("=======isRegister出错了========");
			model.addAttribute(Constant.BLUR_MESSAGE, "请稍后再试或者联系管理员");
			return JSONArray.toJSONString(model);
		}
	}
	//6.退出登录
	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session){
		session.removeAttribute(Constant.USER_SESSION);
		return "common/main";
	}
}
