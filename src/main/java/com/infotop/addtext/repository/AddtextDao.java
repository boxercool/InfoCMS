package com.infotop.addtext.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.addtext.entity.Addtext;
import com.infotop.attachment.entity.Attachment;

public interface AddtextDao extends PagingAndSortingRepository<Addtext, Long>, JpaSpecificationExecutor<Addtext>{

}
