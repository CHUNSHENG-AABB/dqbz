package com.dqbz.service;

import com.dqbz.model.Article;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface ArticleService {

	List<Article> getArticleByType(String type);

	int addArticle(Article Article);

	int updateArticle(Article Article);

	Article getArticleByID(int id);

	int deleteArticleByID(int id);

	Article selectArticleByID(int id);
}
