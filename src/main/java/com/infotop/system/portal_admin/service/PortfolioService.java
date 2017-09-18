	package com.infotop.system.portal_admin.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.system.portal_admin.entity.Portfolio;
import com.infotop.system.portal_admin.repository.PortfolioDao;


@Component
@Transactional(readOnly = true)

public class PortfolioService
{
	@Autowired
	private PortfolioDao portfolioDao;
	
	
	@Transactional(readOnly = false)
	public void save(Portfolio entity)
	{
		portfolioDao.save(entity);
	}
	
	
	public Portfolio getPortfolio(int templateid,int pageid,int websiteid){
		return portfolioDao.getPortfolio(templateid, pageid, websiteid);
	}
}
