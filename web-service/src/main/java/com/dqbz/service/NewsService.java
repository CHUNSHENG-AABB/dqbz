package com.dqbz.service;

import com.dqbz.model.Member;
import com.dqbz.model.News;

import java.util.List;


/**
 * Created by o on 2017/7/23.
 */
public interface NewsService {

	List<News> getAllNews();

	List<News> getNewsByType(String type);

	int addNews(News news);

	int updateNews(News news);

	News getNewsByID(int id);

	int deleteNewsByID(int id);

	News selectNewByID(int id);
}
