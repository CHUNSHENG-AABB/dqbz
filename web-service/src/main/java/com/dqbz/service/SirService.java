package com.dqbz.service;

import com.dqbz.model.Sir;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface SirService {

	List<Sir> getSirByType(String type);

	int addSir(Sir Sir);

	int updateSir(Sir Sir);

	Sir getSirByID(int id);

	int deleteSirByID(int id);

	Sir selectSirByID(int id);
}
