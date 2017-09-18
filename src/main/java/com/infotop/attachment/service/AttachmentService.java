package com.infotop.attachment.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;

import com.infotop.attachment.entity.Attachment;
import com.infotop.attachment.repository.AttachmentDao;



/**
 * SpmissysattachmentManager
 * $Id: SpmissysattachmentManager.java,v 0.0.1   $
 */
@Component
@Transactional(readOnly = true)
public class AttachmentService {
	
	
	@Autowired
	private AttachmentDao attachmentDao;
	
	@Transactional(readOnly = false)
	public void save(Attachment entity){
		attachmentDao.save(entity);
	}
	
	
	public Attachment get(Long id){
		return attachmentDao.findOne(id);
	}
	
	
	/*public List<Attachment> getByRid(String rid){
		return attachmentDao.findByRid(rid);
	}*/
	 
	
	@Transactional(readOnly = false)
    public void delete(Long id) {
        this.attachmentDao.delete(id);
    }
	
	
    public List<Attachment> getAll() {
		List<Attachment> searchdatalist = (List<Attachment>) attachmentDao.findAll();
		return searchdatalist;
	}
    	
			
			
    public Page<Attachment> getAllAttachmentinfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
            String sortType) {
        PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
        Specification<Attachment> spec = buildSpecification(filterParams);
        return attachmentDao.findAll(spec,pageRequest);
    }

    
    private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
        Sort sort = null;
        if ("auto".equals(sortType)) {
            sort = new Sort(Direction.DESC, "id");
        } else if ("name".equals(sortType)) {
            sort = new Sort(Direction.DESC, "name");
        }
        return new PageRequest(pageNumber - 1, pagzSize, sort);
    }

    
    private Specification<Attachment> buildSpecification(Map<String, Object> filterParams) {
        Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
        Specification<Attachment> spec = DynamicSpecifications.bySearchFilter(filters.values(), Attachment.class);
        return spec;
    }	

}