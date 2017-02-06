package cn.yuhao.experiment.mapper;


import cn.yuhao.experiment.pojo.*;

import java.util.List;
import java.util.Map;

public interface SysUserMapper {
   List< Map> findUser(User user);

   List< Map> findCollectVideo(String uid);
   List<Map> findBlog(Blog blog);

    List<Map> findAcategory();

    List<Map> findBcategory(Bcategory bcategory);

    List<Map> findCcategory(Ccategory ccategory);
}