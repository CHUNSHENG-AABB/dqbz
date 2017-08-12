package com.dqbz.service;

import com.dqbz.model.Sweep;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface SweepService {

	List<Sweep> getAllSweep();

	int addSweep(Sweep news);

	int updateSweep(Sweep news);

	Sweep getSweepByID(int id);

	int deleteSweepByID(int id);

	Sweep selectSweepByID(int id);
}
