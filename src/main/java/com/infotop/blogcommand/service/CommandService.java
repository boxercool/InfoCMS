package com.infotop.blogcommand.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.blogcommand.entity.Command;
import com.infotop.blogcommand.repository.CommandDao;
import com.infotop.site.entity.site;

@Component
@Transactional(readOnly=true)
public class CommandService {

	@Autowired
	private CommandDao  commandDao;
	
	
	@Transactional(readOnly=false)
	public void save(Command command){
		commandDao.save(command);
	}
	
	public Command get(Long cid){
		return commandDao.findOne(cid);
	}
	public Command getCommand(int templateid,int pageid,int websiteid){
		return commandDao.getCommand(templateid, pageid, websiteid);
	}
		
public List<Command> listByCommand(int templateid,int pageid,int websiteid){
		return commandDao.listByCommand(templateid, pageid, websiteid);
	}

public List<Command> getAll()
{
	return(List<Command>)commandDao.findAll();
}
		
		

}
