package com.infotop.header.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.header.entity.Header;

public interface HeaderDao extends PagingAndSortingRepository<Header, Long>,JpaSpecificationExecutor<Header>{
    
	@Query("from Header a where a.websiteid=?1 ")
	public Header getHeader(int websiteid);

		
}
