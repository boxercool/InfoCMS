package com.infotop.attribute.service;

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

import com.infotop.attribute.entity.Attribute;

import com.infotop.attribute.respository.AttributeDao;


@Component
@Transactional(readOnly=true)
public class AttributeService {
	
	@Autowired
	private AttributeDao attributeDao;


	public Attribute get(int attributeid){
		return attributeDao.findOne(attributeid);
	}
	
	@Transactional(readOnly=false)
	public void save(Attribute attribute){
		attributeDao.save(attribute);
		
	}
	
	@Transactional(readOnly=false)
	public void delete(int attributeid){
		attributeDao.delete(attributeid);
	}
	
	public List<Attribute> getAll(){
		return (List<Attribute>) attributeDao.findAll();
	}
	
	 public Page<Attribute> getAllAttributeInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
	            String sortType) {
	    	System.out.println("1");
	        PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
	        System.out.println("2");
	        Specification<Attribute> spec = buildSpecification(filterParams);
	        System.out.println("3");
	        return attributeDao.findAll(spec,pageRequest);
	    }

	    private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
	        Sort sort = null;
	        if ("auto".equals(sortType)) {
	            sort = new Sort(Direction.DESC, "attributeid");
	        } else if ("name".equals(sortType)) {
	            sort = new Sort(Direction.DESC, "name");
	        }
	        return new PageRequest(pageNumber - 1, pagzSize, sort);
	    }

	    private Specification<Attribute> buildSpecification(Map<String, Object> filterParams) {
	        Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
	        Specification<Attribute> spec = DynamicSpecifications.bySearchFilter(filters.values(), Attribute.class);
	        return spec;
	    }	

	
}
