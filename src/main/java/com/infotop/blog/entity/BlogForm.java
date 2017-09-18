package com.infotop.blog.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.multipart.commons.CommonsMultipartFile;


@Entity
@Table(name="blog")
public class BlogForm {
	
	
	public Long id;
	
	
	
	public int websiteid;
	public int pageid;
	public int templateid;
	private String blogheader;
	private String blogcontent;
private String blogimage;
/*
private String contentType;

private Long size;*/
/*
	private byte[] blogimage;
	/*public int blogimageid;*/
	
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	public int getWebsiteid() {
		return websiteid;
	}
	public void setWebsiteid(int websiteid) {
		this.websiteid = websiteid;
	}
	public int getPageid() {
		return pageid;
	}
	public void setPageid(int pageid) {
		this.pageid = pageid;
	}
	public int getTemplateid() {
		return templateid;
	}
	public void setTemplateid(int templateid) {
		this.templateid = templateid;
	}
	public String getBlogheader() {
		return blogheader;
	}
	public void setBlogheader(String blogheader) {
		this.blogheader = blogheader;
	}
	public String getBlogcontent() {
		return blogcontent;
	}
	public void setBlogcontent(String blogcontent) {
		this.blogcontent = blogcontent;
	}
	public String getBlogimage() {
		return blogimage;
	}
	public void setBlogimage(String blogimage) {
		this.blogimage = blogimage;
	}
	/*public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}*/

	/*	public byte[] getBlogimage() {
		return blogimage;
	}
	public void setBlogimage(byte[] blogimage) {
		this.blogimage = blogimage;
	}*/
	/*public CommonsMultipartFile getFile1() {
		return file1;
	}
	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}*/
	
/*
public String getContentType() {
	return contentType;
}

public void setContentType(String contentType) {
	this.contentType = contentType;
}

public Long getSize() {
	return size;
}

public void setSize(Long size) {
	this.size = size;
}*/
	

}
