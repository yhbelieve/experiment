package cn.yuhao.experiment.service;

import cn.yuhao.experiment.pojo.SysUser;
import cn.yuhao.experiment.pojo.User;

import java.util.List;

public interface SysUserService {
	SysUser getById(Long id);
	User getAll(String uid);
	List<User> findAll();
}
