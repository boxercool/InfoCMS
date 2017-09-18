package com.infotop.fileupload.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.fileupload.entity.Image;

public interface ImageDao extends PagingAndSortingRepository<Image,Long>,JpaSpecificationExecutor<Image> {

	@Modifying
	@Query("update Image set url =?1,thumbnailUrl=?2,deleteUrl=?3,deleteType=?4 where id=?5")
	public void update(String url,String thumbnailUrl,String deleteUrl,String deleteType, long id);
	
	@Modifying
	@Query("from Image where templateId=?1 AND pageId=?2 AND websiteId=?3")
	public List<Image> listByTemplate(int templateId, int pageId,int websiteId);
}
