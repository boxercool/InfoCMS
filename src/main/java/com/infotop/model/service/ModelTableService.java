package com.infotop.model.service;

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


import com.infotop.model.entity.ModelTable;
import com.infotop.model.respository.ModelTableDao;

@Component
@Transactional(readOnly=true)
public class ModelTableService {
	
	@Autowired
	private ModelTableDao modelTableDao;
	
	public ModelTable get(Long modelid){
		return modelTableDao.findOne(modelid);
	}

	@Transactional(readOnly=false)
	public void save(ModelTable modelTable){
		modelTableDao.save(modelTable);
	}
	@Transactional(readOnly=false)
	public void delete(Long modelid){
		modelTableDao.delete(modelid);
	}
	public List<ModelTable> getAll(){
		return (List<ModelTable>) modelTableDao.findAll();
		
	}
	

    public Page<ModelTable> getAllModelTableInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
            String sortType) 
    {
    	System.out.println("1");
        PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
        System.out.println("2");
        Specification<ModelTable> spec = buildSpecification(filterParams);
        System.out.println("3");
        return modelTableDao.findAll(spec,pageRequest);
    }

    private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
        Sort sort = null;
        if ("auto".equals(sortType)) {
            sort = new Sort(Direction.DESC, "modelid");
        } else if ("name".equals(sortType)) {
            sort = new Sort(Direction.DESC, "name");
        }
        return new PageRequest(pageNumber - 1, pagzSize, sort);
    }

    private Specification<ModelTable> buildSpecification(Map<String, Object> filterParams) {
        Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
        Specification<ModelTable> spec = DynamicSpecifications.bySearchFilter(filters.values(), ModelTable.class);
        return spec;
    }	


}
