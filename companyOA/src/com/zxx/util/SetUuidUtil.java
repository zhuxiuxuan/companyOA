package com.zxx.util;

import java.util.UUID;

/**
 * 生成uuid工具类
 * @author 朱修轩
 *2017-12-25
 *上午11:08:27
 */
public class SetUuidUtil {
	public static String getUUID(){
		String uuid = UUID.randomUUID().toString().replaceAll("-", "").substring(15);
		uuid = "zxx"+uuid;
		return uuid;
	}
	public static void main(String[] args) {
		for(int i=8;i<13;i++){
			String uuid = UUID.randomUUID().toString().replaceAll("-", "").substring(15);
			System.out.println("zxx"+i+uuid);
			}
	}
}
