package com.dqbz.service.impl;

import com.dqbz.dao.NewsMapper;
import com.dqbz.model.News;
import com.dqbz.service.NewsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImpl implements NewsService{

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<News> getAllNews(){
        return newsMapper.selectAllNews();
    }

    @Override
    public int addNews(News news){

        return newsMapper.insertSelective(news);
    }

    @Override
    public int updateNews(News news){
        return newsMapper.updateByPrimaryKeyWithBLOBs(news);
    }

    @Override
    public News getNewsByID(int id){
        return newsMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteNewsByID(int id){

        return newsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public News selectNewByID(int id){

        return newsMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<News> getNewsByType(String type){

        return newsMapper.getNewsByType(type);
    }
}
