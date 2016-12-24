package cn.yuhao.experiment.controller;

import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.AdminService;
import cn.yuhao.experiment.service.SysUserService;
import cn.yuhao.experiment.utils.DESUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Admin")
public class AdminController {

    @Resource
    private AdminService adminService;

    @Resource
    private SysUserService sysUserService;

    @RequestMapping(value = "Login", method = RequestMethod.GET)
    public String showIndex() {
        System.out.println("后台首页");
        return "admin/login";
    }

    @RequestMapping(value = "Login", method = RequestMethod.POST)
    public String showIndex(Admin admin, HttpServletRequest request, Model model) {
        admin.setPassword(DESUtils.getEncryptString(admin.getPassword()));
        Admin admin1 = adminService.findAdmin(admin);
        if (admin1 == null) {
            model.addAttribute("admin", admin);
            model.addAttribute("msg", "用户名或密码错误");
            return "admin/login";
        } else {
            request.getSession().setAttribute("admin", admin1);
            System.out.println("后台首页");
//           登录成功，返回显示所有用户的action
            return "admin/login";
        }

    }

    @RequestMapping(value = "Logout", method = RequestMethod.GET)
    public String Logout(HttpSession session) {
        session.invalidate();
        return "redirect:/Admin/Login";
    }

    @RequestMapping(value = "editPassword", method = RequestMethod.POST)
    public String editPassword(Admin admin, Model model, HttpServletRequest request) {
        adminService.updateByPrimaryKeySelective(admin);
        request.getSession().setAttribute("admin", admin);
        model.addAttribute("msg", "密码修改成功");
        return "admin/login";
    }

    /*
    * 一级分类的增删改查方法
    *
    * */
    @RequestMapping("findAllAcategory")
    public String findAllAcategory(Model model) {
        List<Map> maps = adminService.findAllAcategory();
        model.addAttribute("list", maps);
        return "admin/login";
    }

    @RequestMapping("selectByPrimaryKeyAcategory/{flag}/{aid}")
    public String selectByPrimaryKeyAcategory(Model model, @PathVariable("aid") String aid, @PathVariable("flag") int flag) {
        Acategory maps = adminService.selectByPrimaryKeyAcategory(aid);
        model.addAttribute("list", maps);
        if (flag == 1) {
            return "admin/login";
        } else {
            return "admin/login";
        }
    }

    @RequestMapping(value = "insertAcategory", method = RequestMethod.POST)
    public String insertAcategory(Model model, Acategory acategory) {
        adminService.insertSelective(acategory);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllAcategory";
    }

    @RequestMapping(value = "updateAcategory", method = RequestMethod.POST)
    public String updateAcategory(Model model, Acategory acategory) {
        adminService.updateByPrimaryKeySelective(acategory);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllAcategory";
    }

    /**
     * 二级分类增删改查
     *
     * @param model
     * @return
     */
    @RequestMapping("findAllBcategory")
    public String findAllBcategory(Model model) {
        List<Map> maps = adminService.findAllBcategory();
        model.addAttribute("list", maps);
        return "admin/login";
    }

    @RequestMapping("selectByPrimaryKeyBcategory/{flag}/{aid}")
    public String selectByPrimaryKeyBcategory(Model model, @PathVariable("aid") String aid, @PathVariable("flag") int flag) {
        Bcategory maps = adminService.selectByPrimaryKeyBcategory(aid);
        model.addAttribute("list", maps);
        if (flag == 1) {
            return "admin/login";
        } else {
            return "admin/login";
        }
    }

    @RequestMapping(value = "insertBcategory", method = RequestMethod.POST)
    public String insertBcategory(Model model, Bcategory bcategory) {
        adminService.insertSelective(bcategory);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllBcategory";
    }

    @RequestMapping(value = "updateBcategory", method = RequestMethod.POST)
    public String updateBcategory(Model model, Bcategory bcategory) {
        adminService.updateByPrimaryKeySelective(bcategory);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllBcategory";
    }

    /**
     * 三级分类的增删改查
     *
     * @param model
     * @return
     */


    @RequestMapping("findAllCcategory")
    public String findAllCcategory(Model model) {
        List<Map> maps = adminService.findAllCcategory();
        model.addAttribute("list", maps);
        return "admin/login";
    }


    @RequestMapping("selectByPrimaryKeyCcategory/{flag}/{aid}")
    public String selectByPrimaryKeyCcategory(Model model, @PathVariable("aid") String aid, @PathVariable("flag") int flag) {
        Ccategory maps = adminService.selectByPrimaryKeyCcategory(aid);
        model.addAttribute("list", maps);
        if (flag == 1) {
            return "admin/login";
        } else {
            return "admin/login";
        }
    }

    @RequestMapping(value = "insertCcategory", method = RequestMethod.POST)
    public String insertCcategory(Model model, Ccategory ccategory) {
        adminService.insertSelective(ccategory);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllCcategory";
    }

    @RequestMapping(value = "updateCcategory", method = RequestMethod.POST)
    public String updateCcategory(Model model, Ccategory ccategory) {
        adminService.updateByPrimaryKeySelective(ccategory);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllCcategory";
    }

    /**
     * blog管理
     *
     * @param model
     * @return
     */

    @RequestMapping("findAllBlog")
    public String findAllBlog(Model model) {
        List<Map> maps = adminService.findAllBlog();
        model.addAttribute("list", maps);
        return "admin/login";
    }


    @RequestMapping("selectByPrimaryKeyBlog/{flag}/{aid}")
    public String selectByPrimaryKeyBlog(Model model, @PathVariable("aid") String aid, @PathVariable("flag") int flag) {
        Blog maps = adminService.selectByPrimaryKeyBlog(aid);

        model.addAttribute("list", maps);
        if (flag == 1) {
            return "admin/login";
        } else {
            return "admin/login";
        }
    }

    @RequestMapping(value = "updateBlog", method = RequestMethod.POST)
    public String updateBlog(Model model, Blog blog) {
        adminService.updateByPrimaryKeySelective(blog);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllBlog";
    }


    @RequestMapping("findAllExam")
    public String findAllExam(Model model) {
        List<Map> maps = adminService.findAllExam();
        model.addAttribute("list", maps);
        return "admin/login";
    }

    @RequestMapping("findAllFile")
    public String findAllFile(Model model) {
        List<Map> maps = adminService.findAllFile();
        model.addAttribute("list", maps);
        return "admin/login";
    }

    @RequestMapping("findAllReply")
    public String findAllReply(Model model) {
        List<Map> maps = adminService.findAllReply();
        model.addAttribute("list", maps);
        return "admin/login";
    }

    @RequestMapping("findAllUser")
    public String findAllUser(Model model) {
        List<Map> maps = adminService.findAllUser();
        model.addAttribute("list", maps);
        return "admin/login";
    }

    /**
     * 敏感词汇的增删改查
     *
     * @param model
     * @return
     */

    @RequestMapping("findAllWord")
    public String findAllWord(Model model) {
        List<Map> maps = adminService.findAllWord();
        model.addAttribute("list", maps);
        return "admin/login";
    }


    @RequestMapping("selectByPrimaryKeyWord/{flag}/{aid}")
    public String selectByPrimaryKeyWord(Model model, @PathVariable("aid") Integer aid, @PathVariable("flag") int flag) {
        Word maps = adminService.selectByPrimaryKeyWord(aid);
        model.addAttribute("list", maps);
        if (flag == 1) {
            return "admin/login";
        } else {
            return "admin/login";
        }
    }

    @RequestMapping(value = "insertWord", method = RequestMethod.POST)
    public String insertWord(Model model, Word word) {
        adminService.insertSelective(word);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllWord";
    }

    @RequestMapping(value = "updateWord", method = RequestMethod.POST)
    public String updateWord(Model model, Word word) {
        adminService.updateByPrimaryKeySelective(word);
        model.addAttribute("msg", "添加成功");
        return "redirect:/Admin/findAllWord";
    }


}
