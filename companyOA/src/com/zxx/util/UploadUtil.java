package com.zxx.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;



/**
 * 上传文件工具类
 * @author 朱修轩
 *2017-12-25
 *上午11:05:12
 */
public class UploadUtil {
	/**
	 * 删除上传的文件
	 * 2018-1-3上午11:11:37
	 */
	public static boolean delectUpload(String Path){
		boolean flag = false;
		String absolutePath = ServletActionContext.getServletContext().getRealPath(Path);
		//取出文件的绝对路径，然后用File方法删除相应文件。
		File file = new File(absolutePath);
		if (file.exists()) {
		    file.delete();
		    flag = true;
		}
		return flag;
	}
	public static String upload(File uploadFile,String fileName,String folderName){
		String NewfileName = "";
		//获取要保存文件夹的物理路径(绝对路径)
        String realPath=ServletActionContext.getServletContext().getRealPath("/"+folderName);
        File file = new File(realPath);
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if(!file.exists())file.mkdirs();
        try {
        	//修改上传文件名称时获取后缀
        	int indexOf = fileName.lastIndexOf(".");
        	String houzui = fileName.substring(indexOf+1);
        	//生成uuid
        	String uuid = SetUuidUtil.getUUID();
        	NewfileName = uuid+"."+houzui;
            //保存文件
            FileUtils.copyFile(uploadFile, new File(file,NewfileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
		return folderName+"/"+NewfileName;
	}

}
