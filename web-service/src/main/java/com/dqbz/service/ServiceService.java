package com.dqbz.service;

import com.dqbz.model.Service;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface ServiceService {

	List<Service> getAllService();

	int addService(Service news);

	int updateService(Service news);

	Service getServiceByID(int id);

	int deleteServiceByID(int id);

	Service selectServiceByID(int id);
}
