package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.SysUserMapper;
import cn.yuhao.experiment.mapper.UserMapper;
import cn.yuhao.experiment.pojo.User;
import cn.yuhao.experiment.service.SysUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class SysUserServiceImpl implements SysUserService {
	
	@Resource
	private SysUserMapper sysUserMapper;
	@Resource
	private UserMapper userMapper;


	@Override
	public User getAll(String uid) {

		return userMapper.selectByPrimaryKey(uid);
	}

	@Override
	public List<User> findAll() {
//		return userMapper.findAll();
		return null;
	}

	@Override
	public List<Map> findUser(User user) {
		return sysUserMapper.findUser(user);
	}

	@Override
	public void regist(User user) {
		userMapper.insertSelective(user);
	}

	public User selectByPrimaryKey(String uuid){
		return userMapper.selectByPrimaryKey(uuid);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record);
	}

}
