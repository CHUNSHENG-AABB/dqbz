package com.dqbz.service;

import com.dqbz.model.Association;

/**
 * Created by o on 2017/7/23.
 */
public interface AssociationService {

	Association getAssociation(int id);

	Integer saveAssociation(Association association);
}
