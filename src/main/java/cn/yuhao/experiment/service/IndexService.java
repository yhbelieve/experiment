package cn.yuhao.experiment.service;

import cn.yuhao.experiment.pojo.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/9.
 */
public interface IndexService {

    List<Map> findAcategory(Acategory acategory);

    List<Map> findBcategoryByAid(Bcategory bcategory);

    List<Map> findVideo(Video video);

    List<Map> findCcategoryByBid(Ccategory ccategory);

    List<Map> findVideoByBid(String bid);

    Map<String, String> findVideoById(String vid);

    Map<String, String> findAcategotyAll(String aid);

    Bcategory selectByPrimaryKey(String bid);


    List<Map> findExamByVid(String vid);

    void addCommment(Discuss discuss);
}
