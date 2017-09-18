package com.infotop.commandlike.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
/*import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;*/
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.commandlike.entity.LikeDlike;

public interface LikeDlikeDao extends PagingAndSortingRepository<LikeDlike, Long>,JpaSpecificationExecutor<LikeDlike>{


	@Query("from LikeDlike a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3 AND a.commandid=?4 ")
LikeDlike findBylike(int templateid , int pageid, int websiteid,  int commandid);

    
	
	@Query("from LikeDlike a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3 AND a.commandid=?4 ORDER BY id DESC ")
	List<LikeDlike> listByLikeDlike(int templateid , int pageid, int websiteid,  int commandid);


	@Query("from LikeDlike a where a.templateid =?1 AND a.pageid =?2 AND a.websiteid=?3")
	List<LikeDlike> listByLikeDlike(int templateid, int pageid, int websiteid);

}
