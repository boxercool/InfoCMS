package com.infotop.system.portal_admin.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.system.portal_admin.entity.Portfolio;

public interface PortfolioDao extends PagingAndSortingRepository<Portfolio, Long>,JpaSpecificationExecutor<Portfolio> 
{
	@Query("from Portfolio a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3")
	public Portfolio getPortfolio(int templateid,int pageid,int websiteid);
}
