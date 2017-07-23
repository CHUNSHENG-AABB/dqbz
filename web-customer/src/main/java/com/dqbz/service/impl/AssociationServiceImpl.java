package com.dqbz.service.impl;

import com.dqbz.dao.AssociationMapper;
import com.dqbz.model.Association;
import com.dqbz.service.AssociationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by lynn on 2017/7/23.
 */
@Service
public class AssociationServiceImpl implements AssociationService{

    @Autowired
    AssociationMapper associationMapper;

    @Override
    public Association getContent() {
        return associationMapper.selectByPrimaryKey(1);
    }

    @Override
    public Association getConstitution() {
        return associationMapper.selectByPrimaryKey(2);
    }

}
