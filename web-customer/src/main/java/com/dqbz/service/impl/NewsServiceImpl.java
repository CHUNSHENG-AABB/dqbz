package com.dqbz.service.impl;

import com.dqbz.dao.NewsMapper;
import com.dqbz.model.News;
import com.dqbz.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lynn on 2017/7/30.
 */
@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<News> getNewsByMemberId(Integer memberId) {

        return newsMapper.selectByMemberId(memberId);
    }

}
