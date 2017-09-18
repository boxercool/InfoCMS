package com.infotop.footer.service;

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
import com.infotop.footer.respository.FooterDao;
import com.infotop.header.entity.Header;

@Component
@Transactional(readOnly=true)
public class FooterService {
	
	@Autowired
	private FooterDao footerDao;
	

	
	public Footer get(Long id)
	{
		return footerDao.findOne(id);
	}
	public Footer geth(int websiteid)
	{
		return footerDao.getFooter(websiteid);
	}
	
	@Transactional(readOnly=false)
	public void save(Footer footer){
		footerDao.save(footer);
	}
	
		
	@Transactional(readOnly=false)
	public void delete(Long id) {
		footerDao.delete(id);
	}
	
	public List<Footer> getall()
	{
		return(List<Footer>)footerDao.findAll();
	}
	public Footer findByName(String footerName){
		
		List<Footer> footers = (List<Footer>)footerDao.findAll();
		
		for(Footer footer:footers){
			
			if(footer.getBackimgfooter().equals(footerName)) {
				return footer;
			}
		}
		return null;
	}
	
	public Page<Footer> getAllfooterInfo(Map<String, Object> filterParams, int pageNumber, int pageSize, 
			String sortType) {
				PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
				Specification<Footer> spec = buildSpecification(filterParams);
				return footerDao.findAll(spec, pageRequest);
			}
	
	/*private PageRequest buildPageRequest(int pageNumber, int pageSize, String sortType) {
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
	
	
	private Specification<Footer> buildSpecification(Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		Specification<Footer> spec = DynamicSpecifications.bySearchFilter(filters.values(), Footer.class);
		return spec;
	}
	}


	
	
	
	

