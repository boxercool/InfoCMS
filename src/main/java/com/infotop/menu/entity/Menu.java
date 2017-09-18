package com.infotop.menu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_tree")
public class Menu {
	
	private Long id;
	private String name;
	private String level;
	private Long parentid;
	private Long siteid;
	
	private Long pagenameid;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	public Long getSiteid() {
		return siteid;
	}
	public void setSiteid(Long siteid) {
		this.siteid = siteid;
	}
	
	public Long getPagenameid() {
		return pagenameid;
	}
	public void setPagenameid(Long pagenameid) {
		this.pagenameid = pagenameid;
	}
	

}
