package cn.yuhao.experiment.service;

import cn.yuhao.experiment.pojo.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/9.
 */
public interface AdminService {

    List<Map> findAllAcategory();

    List<Map> findAllBcategory();

    List<Map> findAllCcategory();

    List<Map> findAllWord();

    List<Map> findAllReply();

    List<Map> findAllExam();

    List<Map> findAllFile();

    List<Map> findAllBlog();

    List<Map> findAllUser();


    int insertSelective(Acategory record);
    int updateByPrimaryKeySelective(Acategory record);
    Acategory selectByPrimaryKeyAcategory(String aid);

    int insertSelective(Bcategory record);
    int updateByPrimaryKeySelective(Bcategory record);
    Bcategory selectByPrimaryKeyBcategory(String bid);

    int insertSelective(Ccategory record);
    int updateByPrimaryKeySelective(Ccategory record);
    Ccategory selectByPrimaryKeyCcategory(String cid);

    int insertSelective(Blog record);
    int updateByPrimaryKeySelective(Blog record);
    Blog selectByPrimaryKeyBlog(String aid);

    int insertSelective(Discuss record);
    int updateByPrimaryKeySelective(Discuss record);
    Discuss selectByPrimaryKeyDiscuss(String aid);

    int insertSelective(Exam record);
    int updateByPrimaryKeySelective(Exam record);
    Exam selectByPrimaryKeyExam(String aid);

    int insertSelective(File record);
    int updateByPrimaryKeySelective(File record);
    Exam selectByPrimaryKeyFile(String aid);

    int insertSelective(Reply record);
    int updateByPrimaryKeySelective(Reply record);
    Reply selectByPrimaryKeyReply(String aid);

    int insertSelective(User record);
    int updateByPrimaryKeySelective(User record);
    User selectByPrimaryKeyUser(String aid);

    int insertSelective(Word record);
    int updateByPrimaryKeySelective(Word record);
    Word selectByPrimaryKeyWord(Integer aid);

    int insertSelective(Video record);
    int updateByPrimaryKeySelective(Video record);
    Video selectByPrimaryKeyVideo(String aid);


    void updateByPrimaryKeySelective(Admin admin);

    Admin findAdmin(Admin admin);
}
