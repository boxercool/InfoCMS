package com.infotop.templateurl.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="sys_templateurl")
public class TemplateURL {
	
	private int id;
	private int templateId;
	private String templateURL;
	private String templateName;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTemplateId() {
		return templateId;
	}
	public void setTemplateId(int templateId) {
		this.templateId = templateId;
	}
	public String getTemplateURL() {
		return templateURL;
	}
	public void setTemplateURL(String templateURL) {
		this.templateURL = templateURL;
	}
	public String getTemplateName() {
		return templateName;
	}
	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}
	

}
