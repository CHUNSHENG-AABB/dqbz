package com.dqbz.service.impl;

import com.dqbz.dao.SirMapper;
import com.dqbz.model.Sir;
import com.dqbz.service.SirService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SirServiceImpl implements SirService {

    @Autowired
    private SirMapper sirMapper;

    @Override
    public int addSir(Sir Sir){

        return sirMapper.insertSelective(Sir);
    }

    @Override
    public int updateSir(Sir Sir){
        return sirMapper.updateByPrimaryKeyWithBLOBs(Sir);
    }

    @Override
    public Sir getSirByID(int id){
        return sirMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteSirByID(int id){

        return sirMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Sir selectSirByID(int id){

        return sirMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Sir> getSirByType(String type){

        return sirMapper.getSirByType(type);
    }
}
