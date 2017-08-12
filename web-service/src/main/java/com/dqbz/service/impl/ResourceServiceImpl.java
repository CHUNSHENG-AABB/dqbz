package com.dqbz.service.impl;

import com.dqbz.dao.ResourceMapper;
import com.dqbz.model.Resource;
import com.dqbz.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    private ResourceMapper ResourceMapper;

    @Override
    public int addResource(Resource Resource){

        return ResourceMapper.insertSelective(Resource);
    }

    @Override
    public int updateResource(Resource Resource){
        return ResourceMapper.updateByPrimaryKeyWithBLOBs(Resource);
    }

    @Override
    public Resource getResourceByID(int id){
        return ResourceMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteResourceByID(int id){

        return ResourceMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Resource selectResourceByID(int id){

        return ResourceMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Resource> getResourceByType(String type){

        return ResourceMapper.getResourceByType(type);
    }
}
