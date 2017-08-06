package com.dqbz.service.impl;

import com.dqbz.dao.ServiceMapper;
import com.dqbz.service.ServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceServiceImpl implements ServiceService{

    @Autowired
    private ServiceMapper ServiceMapper;

    @Override
    public List<com.dqbz.model.Service> getAllService(){
        return ServiceMapper.selectAllService();
    }

    @Override
    public int addService(com.dqbz.model.Service service){

        return ServiceMapper.insertSelective(service);
    }

    @Override
    public int updateService(com.dqbz.model.Service Service){
        return ServiceMapper.updateByPrimaryKeyWithBLOBs(Service);
    }

    @Override
    public com.dqbz.model.Service getServiceByID(int id){
        return ServiceMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteServiceByID(int id){

        return ServiceMapper.deleteByPrimaryKey(id);
    }

    @Override
    public com.dqbz.model.Service selectServiceByID(int id){

        return ServiceMapper.selectByPrimaryKey(id);
    }

}
