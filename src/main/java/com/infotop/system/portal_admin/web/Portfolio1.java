package com.infotop.system.portal_admin.web;

public class Portfolio1 {
	
	public String commandmsg;
	
	private int rating;
	
	public String date; 
	public int commandid;
	public int clike;
	public int dlike;
	
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
		return "Portfolio1 [commandmsg=" + commandmsg + ", rating=" + rating + ", date=" + date + ", commandid="
				+ commandid + ", clike=" + clike + ", dlike=" + dlike + "]";
	}
}
