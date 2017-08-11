package com.dqbz.service;

import com.dqbz.model.Activity;

import java.util.Date;
import java.util.List;

/**
 * Created by lynn on 2017/8/5.
 */
public interface ActivityService {

	List<Activity> getDoingActivity(Date now);

	List<Activity> getEndedActivity(Date now);

	Activity getActivityById(Integer id);

	List<Activity> getAllActivity();
}
