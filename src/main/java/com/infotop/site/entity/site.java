package com.infotop.site.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_site")
public class site {
	
	private Long id;
	private String name;
	private String email;
	private String login;
	private String password;
	private String sitetitle;
	private String sitedomain;
	private String protocol;
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSitetitle() {
		return sitetitle;
	}
	public void setSitetitle(String sitetitle) {
		this.sitetitle = sitetitle;
	}
	public String getSitedomain() {
		return sitedomain;
	}
	public void setSitedomain(String sitedomain) {
		this.sitedomain = sitedomain;
	}
	public String getProtocol() {
		return protocol;
	}
	public void setProtocol(String protocol) {
		this.protocol = protocol;
	}
	

}
