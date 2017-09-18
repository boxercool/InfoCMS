package com.infotop.site.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.site.entity.site;

public interface SiteDao extends PagingAndSortingRepository<site, Long>,JpaSpecificationExecutor<site> {
	public boolean findByName(String siteName);
}
