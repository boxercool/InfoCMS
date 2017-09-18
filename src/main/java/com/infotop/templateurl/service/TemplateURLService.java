package com.infotop.templateurl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.templateurl.entity.TemplateURL;
import com.infotop.templateurl.repository.TemplateURLDao;

@Component
@Transactional(readOnly=true)
public class TemplateURLService {
	
	@Autowired
	private TemplateURLDao templateURLDao;
	
	public TemplateURL get(Integer id){
		return templateURLDao.findOne(id);
	}

	@Transactional(readOnly=false)
	public void save(TemplateURL TemplateURL){
		templateURLDao.save(TemplateURL);
	}
	@Transactional(readOnly=false)
	public void delete(Integer id){
		templateURLDao.delete(id);
	}
	public List<TemplateURL> getAll(){
		return (List<TemplateURL>) templateURLDao.findAll();
	}

	public List<TemplateURL> getall()
	{
		return(List<TemplateURL>)templateURLDao.findAll();
	}
}
