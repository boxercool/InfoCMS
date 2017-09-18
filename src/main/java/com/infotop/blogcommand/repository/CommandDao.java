package com.infotop.blogcommand.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.blogcommand.entity.Command;

public interface CommandDao extends PagingAndSortingRepository<Command, Long>,JpaSpecificationExecutor<Command>{

    @Modifying
	@Query("from Command a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3 ")
	public Command getCommand(int templateid,int pageid,int websiteid);
	
	@Modifying	
	@Query("from Command a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3 ORDER BY id DESC  ")
	public List<Command> listByCommand(int templateid,int pageid,int websiteid);

	
	
}
