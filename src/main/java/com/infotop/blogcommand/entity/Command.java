package com.infotop.blogcommand.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="commandstore")
public class Command {
	
	
	public Long id;
	
	public int websiteid;
	public int pageid;
	public int templateid;
	public String commandmsg;
	private int rating;
	
	public String date; 
	public int clike;
	public int dlike;
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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

	public String getCommandmsg() {
		return commandmsg;
	}
	public void setCommandmsg(String commandmsg) {
		this.commandmsg = commandmsg;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
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
		return "Command [id=" + id + ", websiteid=" + websiteid + ", pageid=" + pageid + ", templateid=" + templateid
				+ ", commandmsg=" + commandmsg + ", rating=" + rating + ", date=" + date + ", clike=" + clike
				+ ", dlike=" + dlike + "]";
	}
	
}
