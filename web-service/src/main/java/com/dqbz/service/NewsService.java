package com.dqbz.service;

import com.dqbz.model.Member;
import com.dqbz.model.News;


/**
 * Created by o on 2017/7/23.
 */
public interface NewsService {

	java.util.List<News> getAllNews();

	int addNews(News news);

	int updateNews(News news);

	News getNewsByID(int id);

	int deleteNewsByID(int id);

	News selectNewByID(int id);
}
