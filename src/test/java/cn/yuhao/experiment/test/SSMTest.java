package cn.yuhao.experiment.test;

import cn.yuhao.experiment.pojo.*;
import cn.yuhao.experiment.service.IndexService;
import cn.yuhao.experiment.service.SysUserService;
import cn.yuhao.experiment.utils.DESUtils;
import cn.yuhao.experiment.utils.MailUtils;
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
	public void test3(){
		Map map=indexService.findAcategotyAll("1");
		System.out.println(JSON.toJSONString(map));
	}

	@Test
	public void test2(){
		/*Map maps=indexService.findVideoById("1111");
		String video=JSON.toJSONString(maps);
		System.out.println("---"+video);
*/
		System.out.println(DESUtils.getEncryptString("111111"));
		System.out.println("大家好2323");
//		MailUtils.sendMail("2990654397@qq.com","来自汇实验--实验学习平台的激活邮件",video);
	}

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
