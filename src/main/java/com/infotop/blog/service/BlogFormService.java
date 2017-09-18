package com.infotop.blog.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.blog.entity.BlogForm;
import com.infotop.blog.respository.BlogFormDao;

@Component
@Transactional(readOnly = true)
public class BlogFormService {
	
	@Autowired
	private BlogFormDao blogFormDao;
	
	

	@Transactional(readOnly = false)
	 public void save(BlogForm blogForm){
	    	
	    	 blogFormDao.save(blogForm);
	    }
	public BlogForm get(long id){
		return blogFormDao.findOne(id);
	}

public BlogForm getBlogForm(int templateid,int pageid,int websiteid){
		return blogFormDao.getBlogForm(templateid, pageid, websiteid);
	}
	    

}
