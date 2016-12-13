package cn.yuhao.experiment.controller;

import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import cn.yuhao.experiment.service.SysUserService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.*;

@Controller
@RequestMapping("/Index")
public class IndexController {

	@Resource
	private IndexService indexService;
	
	@Resource
	private SysUserService sysUserService;

	/**
	 * 显示首页内容
	 * @param model
	 * @return
	 */


	@RequestMapping("/showIndex")
	public String findAcategory(Model model){
		Acategory acategory=new Acategory();
		acategory.setAxs(true);
		List<Map> list=indexService.findAcategory(acategory);
		for (int i=0;i<list.size();i++){
			Bcategory bcategory=new Bcategory();
			bcategory.setAid(list.get(i).get("aid").toString());
			List< Bcategory> bcategories=indexService.findBcategoryByAid(bcategory);
			list.get(i).put("bname",bcategories);
		}
		JSONArray list1=JSON.parseArray(JSON.toJSONString(list));
		model.addAttribute("list",list1);
		return "view/index";
	}
	@RequestMapping("findBcategoryVideo/{bid}")
	public  String findBcategoryVideo(Model model,@PathVariable("bid") String bid){
		List<Map> maps=indexService.findVideoByBid(bid);
		JSONArray list=JSON.parseArray(JSON.toJSONString(maps));
		System.out.println(list);
		model.addAttribute("list",list);
		return "view/products";
	}

	@RequestMapping("findVideoById/{vid}")
	public  String findVideoById(Model model,@PathVariable("vid") String vid){
		Map maps=indexService.findVideoById(vid);
		String video=JSON.toJSONString(maps);
		System.out.println("---"+video);
		model.addAttribute("list",video);
		return "view/products";
	}


	@RequestMapping("/showUserToJspById/{userId}")
	public String showUser(Model model,@PathVariable("userId") Long userId){
		SysUser user = this.sysUserService.getById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}
	
	@RequestMapping("/showUserToJSONById/{userId}")
	@ResponseBody
	public SysUser showUser(@PathVariable("userId") Long userId){
		SysUser user = sysUserService.getById(userId);
		return user;
	}
	
	
	@RequestMapping("/test-logback")
	@ResponseBody
	public Date testLogback(){
		User user=sysUserService.getAll("123");
		System.out.print(user);
		PageHelper.startPage(1, 2);
		List<User> list=sysUserService.findAll();
		System.out.println(list.size());

		return new Date();
	}
	



}
