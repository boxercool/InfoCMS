package com.infotop.fileupload.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.fileupload.entity.Image;
import com.infotop.fileupload.repository.ImageDao;

@Component
@Transactional(readOnly = true)
public class ImageService {
	@Autowired
	private ImageDao imageDao;
	
	public List<Image> list(){
		
		return (List<Image>) imageDao.findAll();
	}
	
    public Image save(Image image){
    	System.out.println(image.getThumbnailUrl());
    	System.out.println(image.getDeleteUrl());
    	System.out.println(image.getUrl());
    	System.out.println(image.getDeleteType());
    	
    	return imageDao.save(image);
    }
    
    public Image get(Long id){
    	
    	return imageDao.findOne(id);
    }
    @Transactional(readOnly=false)
    public void delete(Image image){
    	imageDao.delete(image);
    }
    @Transactional(readOnly = false)
    public void update(String url,String thumbnailUrl,String deleteUrl,String deleteType, long id){
    	
    	imageDao.update(url, thumbnailUrl, deleteUrl, deleteType, id);
    }
    	public List<Image> listByTemplate(int templateId,int pageId,int websiteId){
    		return imageDao.listByTemplate(templateId, pageId, websiteId);
    	}
  
}

