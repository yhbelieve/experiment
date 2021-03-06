package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.*;
import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.SysUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class SysUserServiceImpl implements SysUserService {

    @Resource
    private SysUserMapper sysUserMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private IndexMapper indexMapper;
    @Resource
    private BlogMapper blogMapper;
    @Resource
    private CollectMapper collectMapper;


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

    @Transactional
    @Override
    public void regist(User user) {
        userMapper.insertSelective(user);
    }

    public User selectByPrimaryKey(String uuid) {
        return userMapper.selectByPrimaryKey(uuid);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(User record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<Map> findCollectVideo(String uid) {
        return sysUserMapper.findCollectVideo(uid);
    }

    @Transactional
    @Override
    public int insertSelective(Video record) {
        return videoMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int insertSelective(Blog record) {
        return blogMapper.insertSelective(record);
    }

    @Override
    public List<Map> findBlog(Blog blog) {
        return sysUserMapper.findBlog(blog);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Blog blog) {
        return blogMapper.updateByPrimaryKeySelective(blog);
    }

    @Transactional
    @Override
    public int deleteByPrimaryKey(String id) {
        return collectMapper.deleteByPrimaryKey(id);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Video record) {
        return videoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<Map> findMyComment(Discuss discuss) {
        return indexMapper.findComment(discuss);
    }

    @Override
    public List<Map> findMyReply(Reply reply) {
        return indexMapper.findReply(reply);
    }

    @Override
    public List<Map> findAcategory() {
        return sysUserMapper.findAcategory();
    }

    @Override
    public List<Map> findBcategory(Bcategory bcategory) {
        return sysUserMapper.findBcategory(bcategory);
    }

    @Override
    public List<Map> findCcategory(Ccategory ccategory) {
        return sysUserMapper.findCcategory(ccategory);
    }


}
