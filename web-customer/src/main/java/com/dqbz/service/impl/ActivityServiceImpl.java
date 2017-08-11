package com.dqbz.service.impl;

import com.dqbz.dao.ActivityMapper;
import com.dqbz.model.Activity;
import com.dqbz.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by lynn on 2017/8/5.
 */
@Service
public class ActivityServiceImpl implements ActivityService {


	@Autowired
	ActivityMapper activityMapper;

	@Override
	public List<Activity> getDoingActivity(Date now) {
		return activityMapper.selectAllByTime(now);
	}

	@Override
	public List<Activity> getEndedActivity(Date now) {
		return activityMapper.selectAllByTimeOver(now);
	}

	@Override
	public Activity getActivityById(Integer id) {
		return activityMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Activity> getAllActivity() {
		return activityMapper.selectAll();
	}
}
