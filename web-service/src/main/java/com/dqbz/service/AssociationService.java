package com.dqbz.service;

import com.dqbz.model.Association;

import java.util.List;

/**
 * Created by o on 2017/7/23.
 */
public interface AssociationService {

	Association getAssociation(int id);

	Integer saveAssociation(Association association);

	List<Association> getAssociationByType(String type);
}
