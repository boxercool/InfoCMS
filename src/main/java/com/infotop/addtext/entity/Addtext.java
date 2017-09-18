package com.infotop.addtext.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "newtext")
public class Addtext {
	
	private Long id;
	private String text1;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText1() {
		return text1;
	}
	public void setText1(String text1) {
		this.text1 = text1;
	}	

}
