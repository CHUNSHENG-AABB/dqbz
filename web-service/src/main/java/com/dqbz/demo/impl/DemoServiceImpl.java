package com.dqbz.demo.impl;


import com.dqbz.dao.DemoDao;
import com.dqbz.demo.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Gao Zhengyuan
 * @create 2017-06-15-17:10
 */
@Service
public class DemoServiceImpl implements DemoService {

	@Autowired
	private DemoDao demoDao;

	@Override
	public String getName(String id) {
		return demoDao.getName(id);
	}
}
