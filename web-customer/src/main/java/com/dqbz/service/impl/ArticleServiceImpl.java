package com.dqbz.service.impl;

import com.dqbz.dao.ArticleMapper;
import com.dqbz.model.Article;
import com.dqbz.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lynn on 2017/7/30.
 */
@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public List<Article> getArticleListByType(String type) {

		return articleMapper.selectByType(type);
	}
}
