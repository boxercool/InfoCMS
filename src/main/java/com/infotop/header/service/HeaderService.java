package com.infotop.header.service;

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

import com.infotop.header.entity.Header;
import com.infotop.header.respository.HeaderDao;
import com.infotop.site.entity.site;

@Component
@Transactional(readOnly=true)
public class HeaderService {

	
	@Autowired
	private HeaderDao headerDao;
	
	
	
	public Header get(Long id)
	{
		return headerDao.findOne(id);
	}
	
	public Header geth(int websiteid)
	{
		return headerDao.getHeader(websiteid);
	}
	
	
	@Transactional(readOnly=false)
	public void save(Header header){
		headerDao.save(header);
		
	}
		
	
	@Transactional(readOnly=false)
	public void delete(Long id) {
		headerDao.delete(id);
	}
	
	
	
	
	
		public List<Header> getall()
	{
		return(List<Header>)headerDao.findAll();
	}
		
	public Header findByName(String headerName){
		
		List<Header> headers = (List<Header>)headerDao.findAll();
		
		for(Header header:headers){
			if(header.getWebsitetitle().equals(headerName)){
				return header;
			}
		}
		return null;
	}
	
	/*public List<Header> getall() 
	{
		return(List<Header>headerDao.findAll());
	}
	public Header findByName(String headerName) {
		List<Header> headers = (List<Header>headerDao.findAll());
		for(Header Header:headers) {
			if(Header.getWebsitetitle().equals(headerName)) {
				return Header;
			}
		}
		return null;
	}*/
	
	
/*	public Page<site> getAllsiteInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		Specification<site> spec = buildSpecification(filterParams);
		return siteDao.findAll(spec, pageRequest);
	}*/
	
	
	public Page<Header> getAllheaderInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		Specification<Header> spec = buildSpecification(filterParams);
		return headerDao.findAll(spec, pageRequest);
	}
	
	
	

	
/*	private PageRequest buildPageRequest(int pageNumber, int pageSize, String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
			} else if ("name".equals(sortType)) {
				sort = new Sort(Direction.DESC, "name");
			}
		return new PageRequest(pageNumber -1, pageSize, sort);
	}*/
	
	private PageRequest buildPageRequest(int pageNumber, int pageSize, String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
		} else if ("name".equals(sortType)) {
			sort = new Sort(Direction.DESC, "name");
		}
		return new PageRequest(pageNumber -1, pageSize, sort);
	}
	
/*	private Specification<site> buildSpecification(Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		Specification<site> spec = DynamicSpecifications.bySearchFilter(filters.values(), site.class);
		return spec;
	}*/
	
	
	private Specification<Header> buildSpecification(Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		Specification<Header> spec = DynamicSpecifications.bySearchFilter(filters.values(), Header.class);
		return spec;
	}

	public Header getSinglePhoto(Long imageId) {
		// TODO Auto-generated method stub
		return null;
	}

	/*public Header getSinglePhoto(Long imageId) {
		// TODO Auto-generated method stub
		return null;
	}*/
}
