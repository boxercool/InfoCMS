package com.infotop.childsite.service;

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

import com.infotop.childsite.entity.Childsite;
import com.infotop.childsite.respository.ChildsiteDao;
import com.infotop.site.entity.site;

@Component
@Transactional(readOnly = true)
	
	public class childService {
		
		@Autowired
		private ChildsiteDao childsiteDao;
		
		public Childsite get(Long id)
		{
			return childsiteDao.findOne(id);
		}
		
		@Transactional(readOnly=false)
		public void save(Childsite childsite)
		{
			childsiteDao.save(childsite);
		}
		
		@Transactional(readOnly=false)
		public void delete(Long id)
		{
			childsiteDao.delete(id);
		}
		
		public List<Childsite> getall()
		{
			return(List<Childsite>)childsiteDao.findAll();
		}
		
		public List<Childsite> getAllPages(int websiteid,int type){
			
			return childsiteDao.getAllPages(websiteid, type);
		}
	public List<Childsite> getAllPages1(int siteid){
			
			return childsiteDao.getAllPages1(siteid);
		}
		
		public Childsite findByPagename(String pageName,int type){
			
			return childsiteDao.findByPagename(pageName, type);
		}

		public Childsite findByPagename(String pageName,int websiteid,int type){
			
			return childsiteDao.findByPagename(pageName,websiteid,type);
		}
		public List<Childsite> listBySiteId(String pageName ,int websiteid,int type,String url){
			return childsiteDao.listBySiteId(pageName, websiteid, type, url);
		}
		/*
		public Page<site> getAllsiteInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
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
		
		public Page<Childsite> getAllChildsiteInfo(Map<String, Object> filterParams, int pageNumber, int pageSize, 
				String sortType) {
			PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
			Specification<Childsite> spec = buildSpecification(filterParams);
			return childsiteDao.findAll(spec, pageRequest);
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
		
	
		
		private Specification<Childsite> buildSpecification(Map<String, Object> filterParams) {
			Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
			Specification<Childsite> spec = DynamicSpecifications.bySearchFilter(filters.values(),Childsite.class);
		    return spec;
		}

	}

