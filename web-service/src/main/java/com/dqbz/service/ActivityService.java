package com.dqbz.service;

import com.dqbz.model.Activity;


/**
 * Created by o on 2017/7/23.
 */
public interface ActivityService {

	java.util.List<Activity> getAllActivity();

	int addActivity(Activity activity);

	int updateActivity(Activity activity);

	Activity getActivityByID(int id);

	int deleteActivityByID(int id);

	Activity selectActivityByID(int id);
}
