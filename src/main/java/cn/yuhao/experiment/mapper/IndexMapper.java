package cn.yuhao.experiment.mapper;


import cn.yuhao.experiment.pojo.Acategory;
import cn.yuhao.experiment.pojo.Bcategory;
import cn.yuhao.experiment.pojo.Ccategory;
import cn.yuhao.experiment.pojo.Video;

import java.util.List;
import java.util.Map;

public interface IndexMapper {

    public List<Map> findAcategory(Acategory acategory);

    public List<Bcategory> findBcategoryByAid(Bcategory bcategory);

    public List<Map> findVideo(Video video);

    public List<Map> findCcategoryByBid(Ccategory ccategory);
}