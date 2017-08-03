package com.dqbz.service;

import com.dqbz.model.Article;

import java.util.List;

/**
 * Created by lynn on 2017/7/30.
 */
public interface ArticleService {

    List<Article> getArticleListByType(String type);

}
