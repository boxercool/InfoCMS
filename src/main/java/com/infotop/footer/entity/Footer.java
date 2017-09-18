package com.infotop.footer.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_footer")
public class Footer {
	
	private Long id;
	private String backimgfooter;
	private String copyrighttxt;
	private String[] favoriteSM;
	private int websiteid;
	
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

	public String getBackimgfooter() {
		return backimgfooter;
	}
	public void setBackimgfooter(String backimgfooter) {
		this.backimgfooter = backimgfooter;
	}
	public String getCopyrighttxt() {
		return copyrighttxt;
	}
	public void setCopyrighttxt(String copyrighttxt) {
		this.copyrighttxt = copyrighttxt;
	}
	
	public String[] getFavoriteSM() {
		return favoriteSM;
	}
	public void setFavoriteSM(String[] favoriteSM) {
		this.favoriteSM = favoriteSM;
	}
	
	

}
