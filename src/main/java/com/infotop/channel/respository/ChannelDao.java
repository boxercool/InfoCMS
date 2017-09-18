package com.infotop.channel.respository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.infotop.channel.entity.Channel;

public interface ChannelDao extends PagingAndSortingRepository<Channel,Long>,JpaSpecificationExecutor<Channel> {

}
