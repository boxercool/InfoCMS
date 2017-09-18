package com.infotop.channel.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;


import com.infotop.channel.entity.Channel;
import com.infotop.channel.respository.ChannelDao;
@Component
@Transactional(readOnly=true)
public class ChannelService {
	@Autowired
	private ChannelDao channelDao;

	public Channel get(Long channelid){
		return channelDao.findOne(channelid);
	}

	@Transactional(readOnly=false)
	public void save(Channel channel){
		channelDao.save(channel);
	}
	@Transactional(readOnly=false)
	public void delete(Long channelid){
		channelDao.delete(channelid);
	}
	public List<Channel> getAll(){
		return (List<Channel>) channelDao.findAll();
		
	}
	
    public Page<Channel> getAllChannelInfo(Map<String, Object> filterParams, int pageNumber, int pageSize,
            String sortType) {
    	System.out.println("1");
        PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
        System.out.println("2");
        Specification<Channel> spec = buildSpecification(filterParams);
        System.out.println("3");
        return channelDao.findAll(spec,pageRequest);
    }

    private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
        Sort sort = null;
        if ("auto".equals(sortType)) {
            sort = new Sort(Direction.DESC, "channelid");
        } else if ("name".equals(sortType)) {
            sort = new Sort(Direction.DESC, "name");
        }
        return new PageRequest(pageNumber - 1, pagzSize, sort);
    }

    private Specification<Channel> buildSpecification(Map<String, Object> filterParams) {
        Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
        Specification<Channel> spec = DynamicSpecifications.bySearchFilter(filters.values(), Channel.class);
        return spec;
    }	

}
