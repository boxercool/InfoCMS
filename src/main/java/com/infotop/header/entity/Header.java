package com.infotop.header.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_header")
public class Header {
	
	private Long id;
	private String websitetitle;
	private String websitelogo;
	private String backgroundimage;
	private int websiteid;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getWebsitetitle() {
		return websitetitle;
	}
	public int getWebsiteid() {
		return websiteid;
	}
	public void setWebsiteid(int websiteid) {
		this.websiteid = websiteid;
	}
	public void setWebsitetitle(String websitetitle) 
	{
		this.websitetitle = websitetitle;
	}
	public String getWebsitelogo() {
		return websitelogo;
	}
	public void setWebsitelogo(String websitelogo) {
		this.websitelogo = websitelogo;
	}
	public String getBackgroundimage() {
		return backgroundimage;
	}
	public void setBackgroundimage(String backgroundimage) {
		this.backgroundimage = backgroundimage;
	}
	
	
	
	
	
	

}
