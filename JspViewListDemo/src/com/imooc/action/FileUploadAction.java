package com.imooc.action;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Items;

public class FileUploadAction extends ActionSupport {

	
	
	public List<File> getUpload() {
		return upload;
	}

	public void setUpload(List<File> upload) {
		this.upload = upload;
	}

	public List<String> getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(List<String> uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	private List<File> upload;

	private List<String> uploadContentType;
	
	private List<String> uploadFileName;
	
	private String result;
	private String name;
	
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		String path = ServletActionContext.getServletContext().getRealPath("/images");
		System.out.println(path);
		File file = new File(path);
		if(!file.exists()){
			file.mkdir();
		}
		
//		Items pic = new Items();
//		pic.setName(uploadFileName.get(0));
		
		
//		ServletActionContext.getRequest().getSession().setAttribute("uploadFileName",pic);
		
		for(int i=0;i<upload.size();i++){
			FileUtils.copyFile(upload.get(i), new File(file,uploadFileName.get(i)));
			System.out.println(uploadFileName.get(i));			
		}
		ServletActionContext.getContext().getSession().put("name", uploadFileName.get(0));
	
		return SUCCESS;
	}
}
