package com.dqbz.service.impl;

import com.dqbz.dao.AssociationMapper;
import com.dqbz.model.Association;
import com.dqbz.service.AssociationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Gao Zhengyuan
 * @create 2017-07-23-16:08
 */
@Service
public class AssociationServiceImpl implements AssociationService {

	@Autowired
	private AssociationMapper associationMapper;

	@Override
	public Association getAssociation(int id) {

		return  associationMapper.selectByPrimaryKey(id);

	}

	@Override
	public Integer saveAssociation(Association association) {

		return associationMapper.updateByPrimaryKeyWithBLOBs(association);
	}


}
