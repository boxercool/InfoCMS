package com.infotop.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cmsmodel")
public class ModelTable {
	

	private long modelid;
	private String name;
	private String createdate;
	private String channelName;
	
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public long getModelid() {
		return modelid;
	}
	public void setModelid(long modelid) {
		this.modelid = modelid;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	
	

}
