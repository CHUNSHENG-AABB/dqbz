package com.dqbz.service;

import com.dqbz.model.Resource;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface ResourceService {

	List<Resource> getResourceByType(String type);

	int addResource(Resource resource);

	int updateResource(Resource resource);

	Resource getResourceByID(int id);

	int deleteResourceByID(int id);

	Resource selectResourceByID(int id);
}
