package com.infotop.model.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.model.entity.ModelTable;

public interface ModelTableDao extends PagingAndSortingRepository<ModelTable, Long>,JpaSpecificationExecutor<ModelTable>{

}
