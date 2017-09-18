package com.infotop.childsite.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.childsite.entity.Childsite;	

public interface ChildsiteDao extends PagingAndSortingRepository<Childsite,Long>,JpaSpecificationExecutor<Childsite>{	

	@Modifying
	@Query("from Childsite a where a.pagename=?1 AND a.type =?2")
	public Childsite findByPagename(String pageName,int type);

	
	
	@Query("from Childsite a where a.pagename=?1 AND a.websiteid=?2 AND a.type=?3")
	public Childsite findByPagename(String pageName,int websiteid,int type);
	
	@Modifying
	@Query(" from Childsite a where a.websiteid = ?1 AND a.type = ?2")
	public List<Childsite> getAllPages(int websiteid,int type);

	@Query(value="select distinct a.websiteid from Childsite a where a.websiteid=?1 ")
	public List<Childsite> getAllPages1(int siteid);
	@Modifying
	@Query("from Childsite a where a.pagename = ?1 AND a.websiteid = ?2  AND a.type=?3 AND a.url=?4")
	public List<Childsite> listBySiteId(String pageName ,int websiteid,int type,String url);
}
