package cn.yuhao.experiment.controller;

import cn.yuhao.experiment.pojo.User;
import cn.yuhao.experiment.service.SysUserService;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	
	private static final Logger LOG = LoggerFactory.getLogger(AdminController.class);
	
	@Resource
	private SysUserService sysUserService;

	@RequestMapping("showIndex")
	public String showIndex(){
		System.out.println("后台首页");
		return "admin/login";
	}


/*	@RequestMapping("/showUserToJspById/{userId}")
	public String showUser(Model model,@PathVariable("userId") Long userId){
		SysUser user = this.sysUserService.getById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}*/
	
	/*@RequestMapping("/showUserToJSONById/{userId}")
	@ResponseBody
	public SysUser showUser(@PathVariable("userId") Long userId){
		SysUser user = sysUserService.getById(userId);
		return user;
	}*/
	
	
	@RequestMapping("/test-logback")
	@ResponseBody
	public Date testLogback(){
		User user=sysUserService.getAll("123");
		System.out.print(user);
		PageHelper.startPage(1, 2);
		List<User> list=sysUserService.findAll();
		System.out.println(list.size());
		LOG.trace("-----------------------------------trace");
		LOG.debug("--------------3234234---------------------debug");
		LOG.info("------------------343343-----------------info");
		LOG.warn("---------------------2323--------------warn");
		LOG.error("-----------------------------------error");
		return new Date();
	}
	



}
