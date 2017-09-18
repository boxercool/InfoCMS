package com.infotop.commandlike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.commandlike.entity.LikeDlike;
import com.infotop.commandlike.repository.LikeDlikeDao;

@Component
@Transactional(readOnly=true)
public class LikeDlikeService {

	@Autowired
	private  LikeDlikeDao likeDlikeDao;
	
	public LikeDlike get(Long id)
	{
		return likeDlikeDao.findOne(id);
	}
	
	@Transactional(readOnly=false)
	public void save(LikeDlike likeDlike)
	{
		likeDlikeDao.save(likeDlike);
	}

    public LikeDlike getLikeDlike(int templateid,int pageid, int websiteid,  int commandid )
	{
		return likeDlikeDao.findBylike(templateid,pageid,websiteid,commandid) ;
	}
	
	public List<LikeDlike> listByLikeDlike(int templateid,int pageid, int websiteid,  int commandid ){
		return likeDlikeDao.listByLikeDlike(templateid,pageid,websiteid,commandid);
	}

	public   List<LikeDlike> listbyLikeDlike(int templateid, int pageid, int websiteid) {
		// TODO Auto-generated method stub
		return likeDlikeDao.listByLikeDlike(templateid,pageid,websiteid);
	}
	
/*	public List<LikeDlike> getAll()
	{
		return(List<LikeDlike>)likeDlikeDao.findAll();
	}
		*/
}


