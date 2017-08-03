package com.dqbz.service.impl;

import com.dqbz.dao.ServiceMapper;
import com.dqbz.model.Service;
import com.dqbz.service.ServiceService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by lynn on 2017/7/30.
 */
@org.springframework.stereotype.Service
public class ServiceServiceImpl implements ServiceService {

    @Autowired
    private ServiceMapper serviceMapper;

    @Override
    public Service getServiceByMemberId(Integer memberId) {
        return serviceMapper.selectByMemberId(memberId);
    }
}
