package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.SysUserMapper;
import cn.yuhao.experiment.mapper.UserMapper;
import cn.yuhao.experiment.pojo.SysUser;
import cn.yuhao.experiment.pojo.User;
import cn.yuhao.experiment.service.SysUserService;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {
	
	@Resource
	private SysUserMapper sysUserMapper;
	@Resource
	private UserMapper userMapper;

	@Override
	public SysUser getById(Long id) {
		return sysUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public User getAll(String uid) {

		return userMapper.selectByPrimaryKey(uid);
	}

	@Override
	public List<User> findAll() {
//		return userMapper.findAll();
		return null;
	}

}
