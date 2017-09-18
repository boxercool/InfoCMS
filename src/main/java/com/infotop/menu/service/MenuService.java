package com.infotop.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.infotop.menu.entity.Menu;
import com.infotop.menu.respository.MenuDao;

@Component
@Transactional(readOnly=true)
public class MenuService {

	@Autowired
	private MenuDao menuDao;
	
	@Transactional(readOnly=false)
	public void save(Menu menu){
		menuDao.save(menu);
	}
	
	@Transactional(readOnly=false)
	public void delete(Long id){
		menuDao.delete(id);
	}
	
	@Transactional(readOnly=false)
	public Menu getMenu(Long id){
		return menuDao.findOne(id);
	}
	
	public List<Menu> getAll(){
		
		return (List<Menu>) menuDao.findAll();
	}
	
	public void deleteMenusWithParentid(Long parentid){
		menuDao.deleteMenusWithParentid(parentid);
	}
	
	public List<Menu> getMenusWithParentid(Long parentid){
		return (List<Menu>)menuDao.getMenusWithParentid(parentid);
	}
	
	public List<Menu> getMenusWithSiteid(Long siteid){
		return (List<Menu>)menuDao.getMenusWithSiteid(siteid);
	}
	public List<Integer> getAllMenu(Long siteid){
		return menuDao.getAllMenu(siteid);
	}
	public List<Menu> getCheck(Long siteid,Long pagenameid){
		return menuDao.getCheck(siteid,pagenameid);
	}
	public List<Menu> getCheckParentId(Long siteid,Long parentId ){
		return (List<Menu>)menuDao.getCheckParentId(siteid,parentId);
	}
}
