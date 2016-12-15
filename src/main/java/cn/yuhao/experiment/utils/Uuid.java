
package cn.yuhao.experiment.utils;

import java.util.UUID;

public class Uuid {
	

	public static  String getUuid()
	{
		return UUID.randomUUID().toString().replace("-","").toUpperCase();
	}

}
