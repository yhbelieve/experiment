package cn.yuhao.experiment.mapper;


import cn.yuhao.experiment.pojo.*;

import java.util.List;
import java.util.Map;

public interface IndexMapper {

     List<Map> findAcategory(Acategory acategory);

     List<Bcategory> findBcategoryByAid(Bcategory bcategory);

     List<Map> findVideo(Video video);

     List<Map> findCcategoryByBid(Ccategory ccategory);

    List<Map> findVideoByBid(String bid);

    List<Map> findFile(String vid);

    List<Map> findComment(Discuss discuss);

    List<Map> findReply(Reply reply);
}