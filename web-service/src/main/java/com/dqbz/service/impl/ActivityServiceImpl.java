package com.dqbz.service.impl;

import com.dqbz.dao.ActivityMapper;
import com.dqbz.model.Activity;
import com.dqbz.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {

    @Autowired
    private ActivityMapper activityMapper;

    @Override
    public List<Activity> getAllActivity(){
        return activityMapper.selectAll();
    }

    @Override
    public int addActivity(Activity Activity){

        return activityMapper.insertSelective(Activity);
    }

    @Override
    public int updateActivity(Activity Activity){
        return activityMapper.updateByPrimaryKeyWithBLOBs(Activity);
    }

    @Override
    public Activity getActivityByID(int id){
        return activityMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteActivityByID(int id){

        return activityMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Activity selectActivityByID(int id){

        return activityMapper.selectByPrimaryKey(id);
    }

}
