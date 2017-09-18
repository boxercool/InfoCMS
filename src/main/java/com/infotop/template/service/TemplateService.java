package com.infotop.template.service;

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

import com.infotop.footer.entity.Footer;
import com.infotop.template.entity.Template;
import com.infotop.template.repository.TemplateDao;
@Component
@Transactional(readOnly=true)
public class TemplateService {

	@Autowired
	private TemplateDao templateDao;
	
	public Template get(Integer id){
		return templateDao.findOne(id);
	}

	@Transactional(readOnly=false)
	public void save(Template Template){
		templateDao.save(Template);
	}
	@Transactional(readOnly=false)
	public void delete(Integer id){
		templateDao.delete(id);
	}
	public List<Template> getAll(){
		return (List<Template>) templateDao.findAll();
		
	}

	public List<Template> getall()
	{
		return(List<Template>)templateDao.findAll();
	}
	public Template findByName(String templateName) {
		List<Template> templates = (List<Template>)templateDao.findAll();
		for(Template template:templates) {
			if(template.getName().equals(templateName)) {
				return template;
			}
		}
		return null;
	}
	
	
	public Page<Template> getAlltemplateInfo(Map<String, Object> filterParams, int pageNumber, int pageSize, 
			String sortType) {
		        PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		        Specification<Template> spec = buildSpecification(filterParams);
		        return templateDao.findAll(spec, pageRequest);
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
	
	
	
	private Specification<Template> buildSpecification(Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		Specification<Template> spec = DynamicSpecifications.bySearchFilter(filters.values(), Template.class);
		return spec;
	}
}

	

