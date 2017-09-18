package com.infotop.childsite.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_page")
public class Childsite {
	
	private Long id;
	private String pagename;
	private int websiteid;
	private int type;
	private String url;
	private int templateid;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPagename() {
		return pagename;
	}
	public void setPagename(String pagename) {
		this.pagename = pagename;
	}
	public int getwebsiteid() {
		return websiteid;
	}
	public void setwebsiteid(int websiteid) {
		this.websiteid = websiteid;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getTemplateid() {
		return templateid;
	}
	public void setTemplateid(int templateid) {
		this.templateid = templateid;
	}	
	

}
