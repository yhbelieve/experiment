package cn.yuhao.experiment.service.impl;

import cn.yuhao.experiment.mapper.*;
import cn.yuhao.experiment.pojo.Acategory;
import cn.yuhao.experiment.pojo.Bcategory;
import cn.yuhao.experiment.pojo.Ccategory;
import cn.yuhao.experiment.pojo.Video;
import cn.yuhao.experiment.service.IndexService;
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

    public List<Acategory> findAcategoryAll(){
//        return acategoryMapper.selectByPrimaryKey();
        return null;
    }

    @Override
    public List<Acategory> findAcategory(Acategory acategory) {
        return indexMapper.findAcategory(acategory);
    }

    @Override
    public List<Bcategory> findBcategoryByAid(Bcategory bcategory) {
        return indexMapper.findBcategoryByAid(bcategory);
    }

    /**
     * 通过video传入参数，可以查找相应的实验，传入的参数最好全面一些
     * @param video
     * @return
     */
    @Override
    public List<Map> findVideo(Video video) {
        return indexMapper.findVideo(video);
    }

    /**
     * 通过从ccategory传入参数，查找符合要求的最后一层分类
     * @param ccategory
     * @return
     */
    @Override
    public List<Map> findCcategoryByBid(Ccategory ccategory) {
        return indexMapper.findCcategoryByBid(ccategory);
    }
}
