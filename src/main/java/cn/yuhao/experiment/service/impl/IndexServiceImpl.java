package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.*;
import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/9.
 */
@Service
public class IndexServiceImpl implements IndexService {
    @Resource
    private AcategoryMapper acategoryMapper;
    @Resource
    private BcategoryMapper bcategoryMapper;
    @Resource
    private CcategoryMapper ccategoryMapper;
    @Resource
    private VideoMapper videoMapper;
    @Resource
    private IndexMapper indexMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private DiscussMapper discussMapper;

    @Override
    public List<Map> findAcategory(Acategory acategory) {
        return indexMapper.findAcategory(acategory);
    }

    @Override
    public List<Map> findBcategoryByAid(Bcategory bcategory) {

        return indexMapper.findBcategoryByAid(bcategory);
    }


    /**
     * 通过video传入参数，可以查找相应的实验，传入的参数最好全面一些
     *
     * @param video
     * @return
     */
    @Override
    public List<Map> findVideo(Video video) {
        return indexMapper.findVideo(video);
    }

    /**
     * 通过从ccategory传入参数，查找符合要求的最后一层分类
     *
     * @param ccategory
     * @return
     */
    @Override
    public List<Map> findCcategoryByBid(Ccategory ccategory) {
        return indexMapper.findCcategoryByBid(ccategory);
    }

    @Override
    public List<Map> findVideoByBid(String bid) {
        return indexMapper.findVideoByBid(bid);
    }

    /**
     * 通过vid，查找video和user，并返回一个map的值
     * 数据中含有评论的内容
     *
     * @param vid
     * @return
     */
    @Override
    @Transactional
    public Map findVideoById(String vid) {
        Video video = videoMapper.selectByPrimaryKey(vid);
        video.setClickNum(video.getClickNum() + 1);
        Map maps = (Map) JSON.toJSON(video);
        User user = userMapper.selectByPrimaryKey(video.getUid());
        List<Map> files = indexMapper.findFile(vid);
        Discuss discuss = new Discuss();
        discuss.setVideoId(vid);
        List<Map> discussMap = indexMapper.findComment(discuss);
        for (int i = 0; i < discussMap.size(); i++) {
            discussMap.get(i).put("user", userMapper.selectByPrimaryKey(discussMap.get(i).get("uid").toString()));
            Reply reply=new Reply();
            reply.setDid((String) discussMap.get(i).get("id"));
            System.out.println(reply.getDid());
            List<Map> repList=  indexMapper.findReply(reply);
            discussMap.get(i).put("replyNum",repList.size());
        }

        maps.put("user", user);
        maps.put("files", files);
        maps.put("discuss", discussMap);
        Video video1 = new Video();
        video1.setVid(video.getVid());
        video1.setClickNum(video.getClickNum());
        videoMapper.updateByPrimaryKeySelective(video1);
        return maps;
    }

    @Override
    public Map<String, String> findAcategotyAll(String aid) {
        Acategory acategory = acategoryMapper.selectByPrimaryKey(aid);
        Map map = (Map) JSON.toJSON(acategory);
        Bcategory bcategory = new Bcategory();
        bcategory.setAid(aid);
        List<Map> bcategoryList = indexMapper.findBcategoryByAid(bcategory);
        for (int i = 0; i < bcategoryList.size(); i++) {
            Ccategory ccategory = new Ccategory();
            ccategory.setBid(bcategoryList.get(i).get("bid").toString());
            List<Map> ccategorys = indexMapper.findCcategoryByBid(ccategory);
            bcategoryList.get(i).put("ccategorys", ccategorys);
        }
        JSONArray bcategorys = JSON.parseArray(JSON.toJSONString(bcategoryList));
        map.put("bcategorys", bcategorys);
        return map;
    }

    @Override
    public Bcategory selectByPrimaryKey(String bid) {
        return bcategoryMapper.selectByPrimaryKey(bid);
    }

    @Override
    public List<Map> findExamByVid(String vid) {
        return indexMapper.findExamByVid(vid);
    }

    @Override
    @Transactional
    public void addCommment(Discuss discuss) {
        discussMapper.insertSelective(discuss);
    }


}
