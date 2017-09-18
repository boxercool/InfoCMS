package com.infotop.menu.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;


import com.infotop.menu.entity.Menu;

public interface MenuDao extends PagingAndSortingRepository<Menu, Long>, JpaSpecificationExecutor<Menu>{
	
	@Modifying
	@Query("delete from Menu a where a.parentid = ?1")
	public void deleteMenusWithParentid(Long parentid);
	
	@Modifying
	@Query("from Menu a where a.parentid = ?1")
	public List<Menu> getMenusWithParentid(Long parentid);
	
	@Modifying
	@Query("from Menu a where a.siteid = ?1")
	public List<Menu> getMenusWithSiteid(Long siteid);
/*	@Query(value="select distinct a.websiteid from Childsite a where a.websiteid=?1 ")*/
	@Modifying
	@Query("from Menu a where a.siteid = ?1 AND a.pagenameid =?2 ")
	public List<Menu> getCheck(Long siteid,Long pagenameid);
	
	@Modifying
	@Query("from Menu a where a.siteid = ?1 AND a.parentid =?2")
	public List<Menu> getCheckParentId(Long siteid,Long parentId );
	
	@Query(value="select distinct a.siteid from Menu a where a.siteid=?1 ")
	public List<Integer> getAllMenu(Long siteid);

}
