package com.zxy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zxy.pojo.User;
import com.zxy.service.UserService;
import com.zxy.util.StringUtil;



@Controller
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request, HttpSession session) {
		// System.out.println("hahaha!" + user.getUserName() + user.getPassWord() +
		// tttttom);
		// 第三节 预告 ： 服务器端进行程序验证
		if (StringUtil.isEmpty(user.getUserName()) || StringUtil.isEmpty(user.getPassWord())) {
			request.setAttribute("error", "用户名或者密码为空！");
			return "login";
		}
		Integer num = userService.dologin(user);
		if (num == null) {
			request.setAttribute("error", "用户名或密码错误！");
			return "login";
		}
		return "main";
	}

	// 添加用户
	@RequestMapping("/register")
	@ResponseBody
	public Map userSave(User user) {
		Map map = new HashMap();
		int num = userService.addUser(user);
		map.put("code", "200");
		map.put("msg", "注册成功！");
		map.put("user", user);
		return map;
	}

}
