package com.dqbz.service.impl;

import com.dqbz.dao.SweepMapper;
import com.dqbz.service.SweepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SweepServiceImpl implements SweepService{

    @Autowired
    private SweepMapper SweepMapper;

    @Override
    public List<com.dqbz.model.Sweep> getAllSweep(){
        return SweepMapper.selectAllSweep();
    }

    @Override
    public int addSweep(com.dqbz.model.Sweep Sweep){

        return SweepMapper.insertSelective(Sweep);
    }

    @Override
    public int updateSweep(com.dqbz.model.Sweep Sweep){
        return SweepMapper.updateByPrimaryKeySelective(Sweep);
    }

    @Override
    public com.dqbz.model.Sweep getSweepByID(int id){
        return SweepMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteSweepByID(int id){

        return SweepMapper.deleteByPrimaryKey(id);
    }

    @Override
    public com.dqbz.model.Sweep selectSweepByID(int id){

        return SweepMapper.selectByPrimaryKey(id);
    }

}
