package cn.yuhao.experiment.test;

import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import cn.yuhao.experiment.service.SysUserService;
import com.alibaba.fastjson.JSON;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:spring/applicationContext*.xml"})
public class SSMTest {

	
	@Resource
	private SysUserService sysUserService;
	@Resource
	private IndexService indexService;
	@Test
	public void test1() {
//		SysUser sysUser = sysUserService.getById(1L);
		Ccategory ccategory=new Ccategory();
		ccategory.setIsShow(true);
		ccategory.setBid("1");
		List<Map> li=indexService.findCcategoryByBid(ccategory);
        for (Map map:li){
            System.out.println("---begain");
            System.out.println(JSON.toJSONString(map));
            map.put("li",JSON.toJSONString(map));
        }
        System.out.println(li);
        Video video=new Video();
		video.setIsReview(1);
		video.setIsShow(1);
		List<Map> list=indexService.findVideo(video);
		for (Map map:list){
			System.out.println("---begain");
			System.out.println(JSON.toJSONString(map));

		}
        System.out.println();
        String videos= JSON.toJSONString(list);
		System.out.println("------------"+videos+"--------------------" );
	}
}
