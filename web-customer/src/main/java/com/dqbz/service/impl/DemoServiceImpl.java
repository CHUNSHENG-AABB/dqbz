package com.dqbz.service.impl;

import com.dqbz.dao.ActivityMapper;
import com.dqbz.dao.ArticleMapper;
import com.dqbz.model.Activity;
import com.dqbz.model.Article;
import com.dqbz.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Gao Zhengyuan
 * @create 2017-06-15-17:10
 */
@Service
public class DemoServiceImpl implements DemoService {

	@Autowired
	private ArticleMapper articleMapper;

	@Autowired
	private ActivityMapper activityMapper;

	@Override
	public Article getName(Integer id) {
		return articleMapper.selectByPrimaryKey(id);
	}

	public Activity getAllActivity(){
		return activityMapper.selectAll();
	}
}
