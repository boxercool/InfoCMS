package com.infotop.system.account.web;

import java.util.List;

import com.infotop.menu.entity.Menu;

public class MenusPage {
	private String pagename;
	
	private int siteid;
	private int type;
	private String url;
	  private List<Menu> getdymenu;
	  
	private String name;
	private String level;
	private Long parentid;
	private Long pagenameid;
	
	public Long getPagenameid() {
		return pagenameid;
	}
	public void setPagenameid(Long pagenameid) {
		this.pagenameid = pagenameid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public List<Menu> getGetdymenu() {
		return getdymenu;
	}
	public void setGetdymenu(List<Menu> getdymenu) {
		this.getdymenu = getdymenu;
	}
	public String getLevel() {
		
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Long getParentid() {
		return parentid;
	}
	public void setParentid(Long parentid) {
		this.parentid = parentid;
	}
	public String getPagename() {
		return pagename;
	}
	public void setPagename(String pagename) {
		this.pagename = pagename;
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
	
	public int getSiteid() {
		return siteid;
	}
	public void setSiteid(int siteid) {
		this.siteid = siteid;
	}
	@Override
	public String toString() {
		return "MenusPage [pagename=" + pagename + ", siteid=" + siteid + ", type=" + type + ", url=" + url
				+ ", getdymenu=" + getdymenu + ", name=" + name + ", level=" + level + ", parentid=" + parentid
				+ ", pagenameid=" + pagenameid + "]";
	}
	
	
	
	
	

}
