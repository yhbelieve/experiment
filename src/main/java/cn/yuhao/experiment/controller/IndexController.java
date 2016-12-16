package cn.yuhao.experiment.controller;

import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import cn.yuhao.experiment.service.SysUserService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.sun.javafx.collections.MappingChange;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
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
	public String findAcategory(Model model, HttpServletRequest request){
		Acategory acategory=new Acategory();
		acategory.setAxs(true);
		List<Map> list=indexService.findAcategory(acategory);
		for (int i=0;i<list.size();i++){
			Bcategory bcategory=new Bcategory();
			bcategory.setAid(list.get(i).get("aid").toString());
			List<Map> bcategories=indexService.findBcategoryByAid(bcategory);
			list.get(i).put("bname",bcategories);
		}
		JSONArray list1=JSON.parseArray(JSON.toJSONString(list));
		Video video=new Video();
		video.setIsShow(1);
		video.setIsReview(1);

		PageHelper.startPage(1,6);
		PageHelper.orderBy("like_num desc");
		List<Map> likeVideos=indexService.findVideo(video);
		PageHelper.startPage(1,6);
		PageHelper.orderBy("download_num desc");
		List<Map> downloadVideos=indexService.findVideo(video);
		PageHelper.startPage(1,6);
		PageHelper.orderBy("click_num desc");
		List<Map> clickVideos=indexService.findVideo(video);
		JSONArray likeList=JSON.parseArray(JSON.toJSONString(likeVideos));
		JSONArray downloadList=JSON.parseArray(JSON.toJSONString(downloadVideos));
		JSONArray clickList=JSON.parseArray(JSON.toJSONString(clickVideos));
		model.addAttribute("likeList",likeList);
		model.addAttribute("downloadList",downloadList);
		model.addAttribute("clickList",clickList);
		request.getSession().setAttribute("list",list1);
		System.out.println(likeList);
		System.out.println(downloadList);
		System.out.println(clickList);
//		System.out.println("over");
		return "view/index";
	}

	/**
	 * 通过bid查找该大分类下面的所有小分类
	 * @param model
	 * @param bid
	 * @return
	 */
	@RequestMapping("findBcategoryVideo/{bid}")
	public  String findBcategoryVideo(Model model,@PathVariable("bid") String bid){
		List<Map> maps=indexService.findVideoByBid(bid);
		JSONArray list=JSON.parseArray(JSON.toJSONString(maps));
		System.out.println(list);
		Bcategory bcategory=indexService.selectByPrimaryKey(bid);
		Map map=indexService.findAcategotyAll(bcategory.getAid());
		model.addAttribute("list",list);
		model.addAttribute("map",map);
		return "view/products";
	}



	/**
	 * 通过bid查找该大分类下面的所有小分类
	 * @param model
	 * @param cid
	 * @return
	 */
	@RequestMapping("findCcategoryVideo/{cid}/{bid}")
	public  String findCcategoryVideo(Model model,@PathVariable("cid") String cid,@PathVariable("bid") String bid){
		Video video=new Video();
		video.setIsShow(1);
		video.setIsReview(1);
		video.setCid(cid);

		Bcategory bcategory=indexService.selectByPrimaryKey(bid);
		Map map=indexService.findAcategotyAll(bcategory.getAid());
		model.addAttribute("map",map);

		List<Map> clickVideos=indexService.findVideo(video);
		model.addAttribute("list",clickVideos);
		return "view/products";
	}
	/**
	 * 查找一个实验相关内容
	 * @param model
	 * @param vid
	 * @return
	 */
	@RequestMapping("findVideoById/{vid}")
	public  String findVideoById(Model model,@PathVariable("vid") String vid){
		Map maps=indexService.findVideoById(vid);
		String video=JSON.toJSONString(maps);
		System.out.println("---"+video);
		model.addAttribute("list",video);
		return "view/single";
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

		return new Date();
	}
	



}
