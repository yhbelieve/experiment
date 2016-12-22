package cn.yuhao.experiment.mapper;


import cn.yuhao.experiment.pojo.Admin;

import java.util.List;
import java.util.Map;

public interface SysAdminMapper {

    List<Map> findAllAcategory();

    List<Map> findAllBcategory();

    List<Map> findAllCcategory();

    List<Map> findAllWord();

    List<Map> findAllReply();

    List<Map> findAllExam();

    List<Map> findAllFile();

    List<Map> findAllBlog();

    List<Map> findAllUser();

    Admin findAdmin(Admin admin);
}