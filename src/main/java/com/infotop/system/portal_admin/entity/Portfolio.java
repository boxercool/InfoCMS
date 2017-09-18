package com.infotop.system.portal_admin.entity;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "portfol")
public class Portfolio 
{
	public Long id;
	public int websiteid;
	public int pageid;
	public int templateid;
	private String headername;
	private String headerContent;
	private String description;
		
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
	public String getHeadername() {
		return headername;
	}
	public void setHeadername(String headername) {
		this.headername = headername;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getHeaderContent() {
		return headerContent;
	}
	public void setHeaderContent(String headerContent) {
		this.headerContent = headerContent;
	}
}
