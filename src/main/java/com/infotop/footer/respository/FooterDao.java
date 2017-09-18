package com.infotop.footer.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.footer.entity.Footer;
import com.infotop.header.entity.Header;

public interface FooterDao extends PagingAndSortingRepository<Footer, Long>, JpaSpecificationExecutor<Footer> {

	
	@Query("from Footer a where a.websiteid=?1 ")
	public Footer getFooter(int websiteid);
}
