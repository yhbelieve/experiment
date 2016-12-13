package cn.yuhao.experiment.service;

import cn.yuhao.experiment.pojo.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/9.
 */
public interface IndexService {

     List<Map> findAcategory(Acategory acategory);

     List<Bcategory> findBcategoryByAid(Bcategory bcategory);

     List<Map> findVideo(Video video);

     List<Map> findCcategoryByBid(Ccategory ccategory);

     List<Map> findVideoByBid(String bid);

    Map<String,String> findVideoById(String vid);




}
