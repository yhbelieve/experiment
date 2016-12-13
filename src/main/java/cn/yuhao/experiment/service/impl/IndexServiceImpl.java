package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.*;
import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Service;

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

    public List<Acategory> findAcategoryAll() {
//        return acategoryMapper.selectByPrimaryKey();
        return null;
    }

    @Override
    public List<Map> findAcategory(Acategory acategory) {
        return indexMapper.findAcategory(acategory);
    }

    @Override
    public List<Bcategory> findBcategoryByAid(Bcategory bcategory) {
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
    public Map findVideoById(String vid) {
        Video video = videoMapper.selectByPrimaryKey(vid);
        Map maps = (Map) JSON.toJSON(video);
        User user = userMapper.selectByPrimaryKey(video.getUid());
        List<Map> files = indexMapper.findFile(vid);
        Discuss discuss = new Discuss();
        discuss.setVideoId(vid);
        List<Map> discussMap = indexMapper.findComment(discuss);
        for (int i = 0; i < discussMap.size(); i++) {
            discussMap.get(i).put("user", userMapper.selectByPrimaryKey(discussMap.get(i).get("uid").toString()));
        }

        maps.put("user", user);
        maps.put("files", files);
        maps.put("discuss", discussMap);

        return maps;
    }


}
