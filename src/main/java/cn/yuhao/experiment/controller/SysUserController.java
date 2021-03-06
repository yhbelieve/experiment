package cn.yuhao.experiment.controller;

import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import cn.yuhao.experiment.service.SysUserService;
import cn.yuhao.experiment.utils.DESUtils;
import cn.yuhao.experiment.utils.DateUtils;
import cn.yuhao.experiment.utils.MailUtils;
import cn.yuhao.experiment.utils.Uuid;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class SysUserController {


    @Resource
    private SysUserService sysUserService;

    @Resource
    private IndexService indexService;

    /**
     * 用户激活
     *
     * @param model
     * @param uuid
     * @return
     */
    @RequestMapping(value = "active/{uuid}", method = RequestMethod.GET)
    public String active(RedirectAttributes model, @PathVariable("uuid") String uuid) {
        User user = sysUserService.selectByPrimaryKey(uuid);
        if (user != null) {
            if (user.getIsActive()) {
                model.addAttribute("msg", "您已经激活过了，请不要重复激活");
                return "view/message";
            } else {
                user.setIsActive(true);
                sysUserService.updateByPrimaryKeySelective(user);
                model.addAttribute("msg", "恭喜您激活成功");
                return "redirect:/Index/login.action";
            }
        } else {
            model.addAttribute("msg", "无用的激活码！！！");
            return "view/message";
        }

    }

    /**
     * 用户注册
     *
     * @param model
     * @param user
     * @return
     */


    @RequestMapping(value = "regist", method = RequestMethod.POST)
    public String regist(Model model, User user) {
        user.setRegistTime(DateUtils.getNowTime());
        user.setUid(Uuid.getUuid());
        user.setPassword(DESUtils.getEncryptString(user.getPassword()));
        String title = "账号激活邮件";
        String content = "请点击一下链接来激活您的账号：127.0.0.1:8080/User/active/" + user.getUid() + "激活您的账户";
        MailUtils.sendMail(user.getEmail(), title, content);
        sysUserService.regist(user);
        model.addAttribute("msg", "恭喜您注册成功，请到您的邮箱中去确认激活账号");
        return "view/message";
    }

    /**
     * 用户登录
     *
     * @param model
     * @param user
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(Model model, User user, HttpServletRequest request) {
        user.setPassword(DESUtils.getEncryptString(user.getPassword()));
        List<Map> listUser = sysUserService.findUser(user);
        if (listUser.size() != 0) {
            if (listUser.get(0).get("is_active").equals(true)) {
                if (listUser.get(0).get("is_show").equals(false)) {
                    model.addAttribute("msg", "您的账号由于违反本网站的相关规定，已经被管理员禁封，有相关疑问请联系管理员");
                    return "view/message";
                } else {
                    //登录成功
                    user.setUid(listUser.get(0).get("uid").toString());
                    user.setUsername(listUser.get(0).get("username").toString());
                    user.setPassword(listUser.get(0).get("password").toString());
                    user.setSex(listUser.get(0).get("sex").toString());
                    user.setEmail(listUser.get(0).get("email").toString());
                    user.setBirthday(listUser.get(0).get("birthday").toString());
                    user.setMoney((Integer) listUser.get(0).get("money"));
                    user.setPhone(listUser.get(0).get("phone").toString());
                    user.setImage(listUser.get(0).get("image").toString());
                    user.setIsShow((Boolean) listUser.get(0).get("is_show"));
                    user.setLevel((Integer) listUser.get(0).get("level"));
                    user.setIsActive((Boolean) listUser.get(0).get("is_active"));
                    user.setAddress(listUser.get(0).get("address").toString());
                    user.setRegistTime(listUser.get(0).get("regist_time").toString());
                    user.setType(listUser.get(0).get("type").toString());
                    request.getSession().setAttribute("user", user);
                    return "redirect:/Index/showIndex";

                }

            } else {
                String content = "账号未激活，请前往您的邮箱:" + listUser.get(0).get("email") + "进行激活";
                model.addAttribute("msg", content);
                return "view/message";
            }
        } else {
            User user1 = new User();
            user1.setUsername(user.getUsername());
            List<Map> listUser1 = sysUserService.findUser(user1);
            if (listUser1.size() == 0) {
                model.addAttribute("msg", "该账户不存在！");
                model.addAttribute("user", user);
                return "view/login";
            } else {
                model.addAttribute("msg", "密码错误");
                model.addAttribute("user", user);
                return "view/login";
            }
        }
    }


    /**
     * 注销登录
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/Index/showIndex.action";
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
    public Map<String, String> ajaxUserName(Model model, @PathVariable("username") String username) {
        User user = new User();
        Map<String, String> map = new HashMap<>();
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
     * @param email
     * @return
     */
    @RequestMapping("/ajaxEmail/{email}")
    @ResponseBody
    public Map<String, String> ajaxEmail(@PathVariable("email") String email) {
        User user = new User();
        user.setEmail(email);
        List<Map> list = sysUserService.findUser(user);
        Map<String, String> map = new HashMap<>();
        if (list.size() == 0) {
            map.put("msg", "邮箱可用");
        } else {
            map.put("msg", "该邮箱已经被注册");
        }
        return map;
    }

    @RequestMapping("/showTable")
    public String showTable() {
        return "user/table";
    }

    /**
     * 显示用户的个人信息
     *
     * @return
     */
    @RequestMapping("/showMyInformation")
    public String showMyInformation() {


        return "user/index";
    }


    /**
     * 显示用户收藏的实验
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping("/findCollectVideo")
    public String findCollectVideo(Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        List<Map> maps = sysUserService.findCollectVideo(user.getUid());
        JSONArray list = JSON.parseArray(JSON.toJSONString(maps));
        model.addAttribute("list", list);
        return "user/table";
    }

    /**
     * 取消收藏用户收藏的实验
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/cancerCollectVideo/{id}", method = RequestMethod.GET)
    public String cancerCollectVideo(Model model, @PathVariable("id") String id) {
        sysUserService.deleteByPrimaryKey(id);
        model.addAttribute("msg", "删除成功");
//      返回显示所有收藏的界面
        return "user/table";
    }

    /**
     * 上传实验
     *
     * @param model
     * @param httpSession
     * @param video
     * @return
     */
    @RequestMapping("uploadVideo")
    public String uploadVideo(Model model, HttpSession httpSession, Video video) {
        User user = (User) httpSession.getAttribute("user");
        video.setVid(Uuid.getUuid());
        video.setTime(DateUtils.getNowTime());
        video.setUid(user.getUid());
        sysUserService.insertSelective(video);
//        转发到显示我上传的实验界面
        return "user/table";
    }
    @RequestMapping("ajaxAcategory")
    @ResponseBody
    public List<Map> ajaxAcategory() {
        System.out.println("---------------------");
      List<Map> list=sysUserService.findAcategory();
        System.out.println("---------------"+list);
        return list;
    }
    @RequestMapping("ajaxBcategory")
    @ResponseBody
    public List<Map> ajaxBcategory(Bcategory bcategory) {
        List<Map> list=sysUserService.findBcategory(bcategory);
        JSONArray jsonArray=JSON.parseArray(JSON.toJSONString(list));
        System.out.println("Bcategory:"+jsonArray);
        return list;
    }
    @RequestMapping("ajaxCcategory")
    @ResponseBody
    public List<Map> ajaxCcategory(Ccategory ccategory) {
        List<Map> list=sysUserService.findCcategory(ccategory);
        JSONArray jsonArray=JSON.parseArray(JSON.toJSONString(list));
        System.out.println("Ccategory:"+jsonArray);
        return list;
    }

    /**
     * 查找自己所有上传的视频
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping("showMyVideo")
    public String showMyVideo(Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        Video video = new Video();
        video.setUid(user.getUid());
        video.setIsShow(1);
        List<Map> maps = indexService.findVideo(video);
        JSONArray list = JSON.parseArray(JSON.toJSONString(maps));
        model.addAttribute("list", list);
        return "user/table_experiment";
    }


    /**
     * 更新实验
     * 包括删除该实验（假删除）
     *
     * @param model
     * @return
     */
    @RequestMapping("updateMyVideo")
    public String updateMyVideo(Model model, Video video) {
        sysUserService.updateByPrimaryKeySelective(video);
        model.addAttribute("msg", "实验更新成功");
        return "redirect:/user/showMyVideo.action";
    }

    @RequestMapping("addVideo")
    public String addVideo(Model model) {
        System.out.println("ffffffffffffffffffff");
        return "user/form_experiment";
    }


    @RequestMapping("addMyBlog")
    public String addMyBlog(Model model, Blog blog) {
        model.addAttribute("list", blog);
        return "user/addBlog";
    }


    /**
     * 查找自己的博客
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping("findMyBlog")
    public String findMyBlog(Model model, HttpSession httpSession, Blog blog) {
        if (blog.getId() == null || blog.getId().equals("")) {
            User user = (User) httpSession.getAttribute("user");
            blog.setUid(user.getUid());
            blog.setIsActive(1);
            List<Map> maps = sysUserService.findBlog(blog);
            JSONArray list = JSON.parseArray(JSON.toJSONString(maps));
            System.out.println(list);
            model.addAttribute("list", list);
            return "user/table_blog";
        } else {
            List<Map> maps = sysUserService.findBlog(blog);
            model.addAttribute("list", maps.get(0));
            return "user/addBlog";
        }
    }
    /**
     * 更新自己的博客
     *
     * @param model
     * @return
     */
    @RequestMapping("updateMyBlog")
    public String updateMyBlog(Model model, Blog blog, HttpSession httpSession) {
        if (blog.getId() == null || blog.getId().equals("")) {
            User user = (User) httpSession.getAttribute("user");
            blog.setUid(user.getUid());
            blog.setTime(DateUtils.getNowTime());
            blog.setId(Uuid.getUuid());
            sysUserService.insertSelective(blog);
        } else {
            sysUserService.updateByPrimaryKeySelective(blog);
        }
//       返回博客显示界面
        model.addAttribute("msg", "操作成功！");
        return "redirect:/user/findMyBlog.action";
    }

    /**
     * 完善自己的信息
     * 包括修改密码，修改头像
     *
     * @param model
     * @return
     */
    @RequestMapping("updateUser")
    public String updateUser(RedirectAttributes model, HttpServletRequest request, User user) {
        sysUserService.updateByPrimaryKeySelective(user);
        List list = sysUserService.findUser(user);
        request.getSession().setAttribute("user", list.get(0));
        model.addAttribute("msg", "个人信息修改成功！");
//       返回自己个人信息的界面
        return "redirect:/user/table";
    }

    /**
     * 查找自己的评论
     *
     * @param model
     * @param httpSession
     * @return
     */
    @RequestMapping("findMyComment")
    public String findMyComment(Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        Discuss discuss = new Discuss();
        discuss.setUid(user.getUid());
        PageHelper.orderBy("time desc");
        List<Map> list = sysUserService.findMyComment(discuss);
        model.addAttribute("list", list);
        return "redirect:/user/table";
    }

    /**
     * 查找有谁回复了自己
     *
     * @param model
     * @param did
     * @return
     */

    @RequestMapping(value = "findMyReply/{did}", method = RequestMethod.GET)
    public String findMyReply(Model model, @PathVariable("did") String did) {
        Reply reply = new Reply();
        reply.setDid(did);
        PageHelper.orderBy("time desc");
        List<Map> list = sysUserService.findMyReply(reply);
        model.addAttribute("list", list);
        return "redirect:/user/table";
    }

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
