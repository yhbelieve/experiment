package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.*;
import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.security.DigestInputStream;
import java.util.List;
import java.util.Map;

/**
 * Created by 豪 on 2016/12/9.
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    private SysAdminMapper sysAdminMapper;
    @Resource
    private AcategoryMapper acategoryMapper;
    @Resource
    private BcategoryMapper bcategoryMapper;
    @Resource
    private CcategoryMapper ccategoryMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private BlogMapper blogMapper;
    @Resource
    private ReplyMapper replyMapper;
    @Resource
    private DiscussMapper discussMapper;
    @Resource
    private ExamMapper examMapper;
    @Resource
    private FileMapper fileMapper;
    @Resource
    private WordMapper wordMapper;
    @Resource
    private IndexMapper indexMapper;
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private AdminMapper adminMapper;

    @Override
    public List<Map> findAllAcategory() {
        return sysAdminMapper.findAllAcategory();
    }

    @Override
    public List<Map> findAllBcategory() {
        return sysAdminMapper.findAllBcategory();
    }

    @Override
    public List<Map> findAllCcategory() {
        return sysAdminMapper.findAllCcategory();
    }

    @Override
    public List<Map> findAllWord() {
        return sysAdminMapper.findAllWord();
    }

    @Override
    public List<Map> findAllReply() {
        return sysAdminMapper.findAllReply();
    }

    @Override
    public List<Map> findAllExam() {
        return sysAdminMapper.findAllExam();
    }

    @Override
    public List<Map> findAllFile() {
        return sysAdminMapper.findAllFile();
    }

    @Override
    public List<Map> findAllBlog() {
        return sysAdminMapper.findAllBlog();
    }

    @Override
    public List<Map> findAllUser() {
        return sysAdminMapper.findAllUser();
    }

    @Transactional
    @Override
    public int insertSelective(Acategory record) {
        return acategoryMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Acategory record) {
        return acategoryMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Acategory selectByPrimaryKeyAcategory(String aid) {
        return acategoryMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(Bcategory record) {
        return bcategoryMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Bcategory record) {
        return bcategoryMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Bcategory selectByPrimaryKeyBcategory(String bid) {
        return bcategoryMapper.selectByPrimaryKey(bid);
    }

    @Transactional
    @Override
    public int insertSelective(Ccategory record) {
        return ccategoryMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Ccategory record) {
        return ccategoryMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Ccategory selectByPrimaryKeyCcategory(String cid) {
        return ccategoryMapper.selectByPrimaryKey(cid);
    }

    @Transactional
    @Override
    public int insertSelective(Blog record) {
        return blogMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Blog record) {
        return blogMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Blog selectByPrimaryKeyBlog(String aid) {
        return blogMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(Discuss record) {
        return discussMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Discuss record) {
        return discussMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Discuss selectByPrimaryKeyDiscuss(String aid) {
        return discussMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(Exam record) {
        return examMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Exam record) {
        return examMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Exam selectByPrimaryKeyExam(String aid) {
        return examMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(File record) {
        return fileMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(File record) {
        return fileMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Exam selectByPrimaryKeyFile(String aid) {
        return examMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(Reply record) {
        return replyMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Reply record) {
        return replyMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Reply selectByPrimaryKeyReply(String aid) {
        return replyMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(User record) {
        return userMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(User record) {
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public User selectByPrimaryKeyUser(String aid) {
        return userMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(Word record) {
        return wordMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Word record) {
        return wordMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Word selectByPrimaryKeyWord(Integer aid) {
        return wordMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public int insertSelective(Video record) {
        return videoMapper.insertSelective(record);
    }

    @Transactional
    @Override
    public int updateByPrimaryKeySelective(Video record) {
        return videoMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Video selectByPrimaryKeyVideo(String aid) {
        return videoMapper.selectByPrimaryKey(aid);
    }

    @Transactional
    @Override
    public void updateByPrimaryKeySelective(Admin admin) {
        adminMapper.updateByPrimaryKeySelective(admin);
    }

    @Override
    public Admin findAdmin(Admin admin) {
        return sysAdminMapper.findAdmin(admin);
    }
}
