package com.infotop.attachment.repository;


import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.attachment.entity.Attachment;
public interface AttachmentDao extends PagingAndSortingRepository<Attachment, Long>, JpaSpecificationExecutor<Attachment>  {

	/*List<Attachment> findByRid(String rid);
*/
	

}