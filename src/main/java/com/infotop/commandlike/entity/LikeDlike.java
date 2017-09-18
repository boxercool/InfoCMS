package com.infotop.commandlike.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="likestore")
public class LikeDlike {
	
	public Long id;
	public int websiteid;
	public int pageid;
	public int templateid;
	public int blogid;
	public int commandid;
	
	public int clike;
	public int dlike;

	
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
	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	public int getCommandid() {
		return commandid;
	}
	public void setCommandid(int commandid) {
		this.commandid = commandid;
	}
	public int getClike() {
		return clike;
	}
	public void setClike(int clike) {
		this.clike = clike;
	}
	public int getDlike() {
		return dlike;
	}
	public void setDlike(int dlike) {
		this.dlike = dlike;
	}
	@Override
	public String toString() {
		return "LikeDlike [id=" + id + ", websiteid=" + websiteid + ", pageid=" + pageid + ", templateid=" + templateid
				+ ", blogid=" + blogid + ", commandid=" + commandid + ", clike=" + clike + ", dlike=" + dlike + "]";
	}
	
	
}
