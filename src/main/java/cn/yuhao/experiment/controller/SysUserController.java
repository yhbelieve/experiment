package cn.yuhao.experiment.controller;

import cn.yuhao.experiment.pojo.User;
import cn.yuhao.experiment.service.SysUserService;
import cn.yuhao.experiment.utils.DateUtils;
import cn.yuhao.experiment.utils.MailUtils;
import cn.yuhao.experiment.utils.Uuid;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/User")
public class SysUserController {


    @Resource
    private SysUserService sysUserService;


    /**
     * 用户激活
     *
     * @param model
     * @param uuid
     * @return
     */
    @RequestMapping(value = "active/{uuid}",method = RequestMethod.GET)
    public String active(Model model, @PathVariable("uuid") String uuid) {
        User user = sysUserService.selectByPrimaryKey(uuid);
        if (user != null) {
            if (user.getIsActive()) {
                model.addAttribute("msg", "您已经激活过了，请不要重复激活");
            } else {
                user.setIsActive(true);
                sysUserService.updateByPrimaryKeySelective(user);
                model.addAttribute("msg", "恭喜您激活成功");
            }
        } else {
            model.addAttribute("msg", "无用的激活码！！！");
        }
        return "";
    }

    /**
     * 用户注册
     *
     * @param model
     * @param user
     * @return
     */


    @RequestMapping(value = "regist",method = RequestMethod.POST)
    public String regist(Model model, User user) {
        user.setRegistTime(DateUtils.getNowTime());
        user.setUid(Uuid.getUuid());
        String title = "账号激活邮件";
        String content = "请点击一下链接来激活您的账号：127.0.0.1:8080/Sysuser/active/" + user.getUid() + "激活您的账户";
        MailUtils.sendMail(user.getEmail(), title, content);
        sysUserService.regist(user);
        return "";
    }

    /**
     * 用户登录
     *
     * @param model
     * @param user
     * @return
     */
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(Model model, User user, HttpServletRequest request) {
        List<Map> listUser = sysUserService.findUser(user);
        if (listUser.get(0) != null) {
            if (listUser.get(0).get("is_active").equals(true)) {
                if (listUser.get(0).get("is_show").equals(true)) {
                    model.addAttribute("msg", "您的账号由于违反本网站的相关规定，已经被管理员禁封，有相关疑问请联系管理员");
                    return "";
                } else {
                    //登录成功
                    request.getSession().setAttribute("user", JSON.toJSONString(listUser.get(0)));
                    return "";

                }

            } else {
                String content = "账号未激活，请前往您的邮箱:" + listUser.get(0).get("email") + "进行激活";
                model.addAttribute("msg", content);
                return "";
            }
        } else {
            User user1=new User();
            user1.setUsername(user.getUsername());
            List<Map> listUser1 = sysUserService.findUser(user1);
            if(listUser1.size()==0){
            model.addAttribute("msg", "该账户不存在！");
                return "";
            }else {
                model.addAttribute("msg", "密码不正确！");
            return "";
            }
        }
    }


    /**
     * 注销登录
     * @param session
     * @return
     */
    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpSession session) {
       session.invalidate();
        return "redirect:Index/showIndex.action";
    }



    /**
     * ajax验证用户名是否可用
     *
     * @param model
     * @param username
     * @return
     */
    @RequestMapping("/ajaxUserName/{username}")
    @ResponseBody
    public Map<String,String> ajaxUserName(Model model, @PathVariable("username") String username) {
        User user = new User();
        Map<String,String> map=new HashMap<>();
        user.setUsername(username);
        List<Map> list = sysUserService.findUser(user);
        if (list.size() == 0) {
            map.put("msg", "用户名用");
        } else {
            map.put("msg", "用户已经被注册");
        }
        return map;
    }

    /**
     * ajax验证邮箱是否可用
     *
     * @param model
     * @param email
     * @return
     */
    @RequestMapping("/ajaxEmail/{email}")
    @ResponseBody
    public Map<String,String> ajaxEmail(Model model, @PathVariable("email") String email) {
        User user = new User();
        user.setEmail(email);
        List<Map> list = sysUserService.findUser(user);
        Map<String,String> map=new HashMap<>();
        if (list.size() == 0) {
           map.put("msg", "邮箱可用");
        } else {
            map.put("msg", "该邮箱已经被注册");
        }
        return map;
    }



	/*@RequestMapping("/showUserToJspById/{userId}")
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
    public void testLogback() {
        User user = sysUserService.getAll("123");
        System.out.print(user);
        PageHelper.startPage(1, 2);
        List<User> list = sysUserService.findAll();
        System.out.println(list.size());

//		return new Date();
    }


}
