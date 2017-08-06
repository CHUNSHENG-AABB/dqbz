package com.dqbz.service;

import com.dqbz.model.News;

import java.util.List;

/**
 * Created by lynn on 2017/7/30.
 */
public interface NewsService {

    List<News> getNewsByMemberId(Integer memberId);

    List<News> getNewsSixRecord();

    List<News> getAllByType(String type);

    News getById(Integer newId);

}
