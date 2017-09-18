package com.infotop.attribute.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.attribute.entity.Attribute;

public interface AttributeDao extends PagingAndSortingRepository<Attribute,Integer>,JpaSpecificationExecutor<Attribute>{

}
