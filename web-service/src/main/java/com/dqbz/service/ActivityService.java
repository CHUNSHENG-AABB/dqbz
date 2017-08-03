package com.dqbz.service;

import com.dqbz.model.Activity;


/**
 * Created by o on 2017/7/23.
 */
public interface ActivityService {

	java.util.List<Activity> getAllNews();

	int addNews(Activity activity);

	int updateNews(Activity activity);

	Activity getNewsByID(int id);

	int deleteNewsByID(int id);

	Activity selectNewByID(int id);
}
