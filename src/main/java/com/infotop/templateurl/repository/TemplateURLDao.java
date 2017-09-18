package com.infotop.templateurl.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.templateurl.entity.TemplateURL;

public interface TemplateURLDao extends PagingAndSortingRepository<TemplateURL, Integer>,JpaSpecificationExecutor<TemplateURL>{

}
