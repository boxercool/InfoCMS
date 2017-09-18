package com.infotop.blog.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.blog.entity.BlogForm;

public interface BlogFormDao extends PagingAndSortingRepository<BlogForm,Long>,JpaSpecificationExecutor<BlogForm> {

	@Query("from BlogForm a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3 ")
	public BlogForm getBlogForm(int templateid,int pageid,int websiteid);
}
