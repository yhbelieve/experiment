package cn.yuhao.experiment.service;

import cn.yuhao.experiment.pojo.User;

import java.util.List;
import java.util.Map;

public interface SysUserService {

	User getAll(String uid);
	List<User> findAll();
	List<Map> findUser(User user);
    void regist(User user);
	public User selectByPrimaryKey(String uuid);
	int updateByPrimaryKeySelective(User record);
}
