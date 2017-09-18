package com.infotop.site.service;

import java.util.ArrayList;
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
import com.infotop.attribute.entity.Attribute;
import com.infotop.site.entity.site;
import com.infotop.site.respository.SiteDao;


@Component
@Transactional(readOnly=true)
public class Siteservice {
	public static final int PAGE_SIZE = 10;
	
	@Autowired
	
	private SiteDao siteDao;
	
	public site get(Long id)
	{
		return siteDao.findOne(id);
	}
	
	@Transactional(readOnly=false)
	public site save(site site)
	{
	return 	siteDao.save(site);
		
	}
	
	@Transactional(readOnly=false)
	public void delete(Long id)
	{
		siteDao.delete(id);
	}
	
	public List<site> getall()
	{
		return(List<site>)siteDao.findAll();
	}
	
	public site findByName(String siteName){
		
		List<site> sites = (List<site>)siteDao.findAll();
		
		for(site site:sites){
			if(site.getSitetitle().equals(siteName)){
				return site;
			}
		}
		return null;
	}
	
	public Page<site> getAllsiteInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		Specification<site> spec = buildSpecification(filterParams);
		return siteDao.findAll(spec, pageRequest);
	}
	  public List<site> getAllsiteInfo(Map<String, Object> filterParams, String sortType) {
	    	PageRequest pageRequest = buildPageRequest(1, 10000, sortType);
	        Specification<site> spec = buildSpecification(filterParams);
	        
	        List<site> searchdatalist = new ArrayList<site>();
	        Page<site> temp = siteDao.findAll(spec, pageRequest);
	        for(site bt : temp){
	        	searchdatalist.add(bt);
	        }
	        return searchdatalist;
	    }
	
	private PageRequest buildPageRequest(int pageNumber, int pageSize, String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
			} else if ("name".equals(sortType)) {
				sort = new Sort(Direction.DESC, "name");
			}
		return new PageRequest(pageNumber -1, pageSize, sort);
	}
	
	private Specification<site> buildSpecification(Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		Specification<site> spec = DynamicSpecifications.bySearchFilter(filters.values(), site.class);
		return spec;
	}


	/*public Page<site> getAllsiteInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
            String sortType) {
    	System.out.println("1");
        PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
        System.out.println("2");
        Specification<site> spec = buildSpecification(filterParams);
        System.out.println("3");
        return siteDao.findAll(spec,pageRequest);
    }

	  public List<site> getAllsiteInfo(Map<String, Object> filterParams, String sortType) {
	    	PageRequest pageRequest = buildPageRequest(1, 10000, sortType);
	        Specification<site> spec = buildSpecification(filterParams);
	        
	        List<site> searchdatalist = new ArrayList<site>();
	        Page<site> temp = siteDao.findAll(spec, pageRequest);
	        for(site bt : temp){
	        	searchdatalist.add(bt);
	        }
	        return searchdatalist;
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

    private Specification<site> buildSpecification(Map<String, Object> filterParams) {
        Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
        Specification<site> spec = DynamicSpecifications.bySearchFilter(filters.values(), site.class);
        return spec;
    }	*/


	
/*	public Page<site> getAllsiteInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		Specification<site> spec = buildSpecification(filterParams);
		return siteDao.findAll(spec, pageRequest);
	}
	
	private PageRequest buildPageRequest(int pageNumber, int pageSize, String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
			} else if ("name".equals(sortType)) {
				sort = new Sort(Direction.DESC, "name");
			}
		return new PageRequest(pageNumber -1, pageSize, sort);
	}
	
	private Specification<site> buildSpecification(Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		Specification<site> spec = DynamicSpecifications.bySearchFilter(filters.values(), site.class);
		return spec;
	}*/

}
