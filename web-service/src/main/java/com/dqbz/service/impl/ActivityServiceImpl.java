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
    public List<Activity> getAllNews(){
        return activityMapper.selectAll();
    }

    @Override
    public int addNews(Activity news){

        return activityMapper.insertSelective(news);
    }

    @Override
    public int updateNews(Activity news){
        return activityMapper.updateByPrimaryKeyWithBLOBs(news);
    }

    @Override
    public Activity getNewsByID(int id){
        return activityMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteNewsByID(int id){

        return activityMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Activity selectNewByID(int id){

        return activityMapper.selectByPrimaryKey(id);
    }

}
