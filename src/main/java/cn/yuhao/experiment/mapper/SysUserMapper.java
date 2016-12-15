package cn.yuhao.experiment.mapper;


import cn.yuhao.experiment.pojo.User;

import java.util.List;
import java.util.Map;

public interface SysUserMapper {
   List< Map> findUser(User user);
}