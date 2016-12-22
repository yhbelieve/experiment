package cn.yuhao.experiment.service;

import cn.yuhao.experiment.pojo.Blog;
import cn.yuhao.experiment.pojo.User;
import cn.yuhao.experiment.pojo.Video;

import java.util.List;
import java.util.Map;

public interface SysUserService {

	User getAll(String uid);
	List<User> findAll();
	List<Map> findUser(User user);
    void regist(User user);
	 User selectByPrimaryKey(String uuid);
	int updateByPrimaryKeySelective(User record);

	List< Map> findCollectVideo(String uid);

	int insertSelective(Video record);

	int insertSelective(Blog record);

	List<Map> findBlog(Blog blog);

	int updateByPrimaryKeySelective(Blog blog);

	int deleteByPrimaryKey(String id);
	int updateByPrimaryKeySelective(Video record);
}
