package com.infotop.attribute.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="attributetype")
public class Attribute {


	private int attributeid;
	
	private String name;
	private String fieldname;
	private String datatype;
	private String length;
	private String default1;
	private String pk;
	private String notnull;
	private String autoincre;
	private String createdate;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	public int getAttributeid() {
		return attributeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAttributeid(int attributeid) {
		this.attributeid = attributeid;
	}
	
	public String getFieldname() {
		return fieldname;
	}
	public void setFieldname(String fieldname) {
		this.fieldname = fieldname;
	}
	public String getDatatype() {
		return datatype;
	}
	public void setDatatype(String datatype) {
		this.datatype = datatype;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public String getDefault1() {
		return default1;
	}
	public void setDefault1(String default1) {
		this.default1 = default1;
	}
	public String getPk() {
		return pk;
	}
	public void setPk(String pk) {
		this.pk = pk;
	}
	public String getNotnull() {
		return notnull;
	}
	public void setNotnull(String notnull) {
		this.notnull = notnull;
	}
	public String getAutoincre() {
		return autoincre;
	}
	public void setAutoincre(String autoincre) {
		this.autoincre = autoincre;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	
	
	
}
