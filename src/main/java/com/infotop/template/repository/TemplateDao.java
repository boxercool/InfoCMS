package com.infotop.template.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.template.entity.Template;

public interface TemplateDao extends PagingAndSortingRepository<Template, Integer>,JpaSpecificationExecutor<Template> {

}
