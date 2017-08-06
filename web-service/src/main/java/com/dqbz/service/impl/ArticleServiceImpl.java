package com.dqbz.service.impl;

import com.dqbz.dao.ArticleMapper;
import com.dqbz.model.Article;
import com.dqbz.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public int addArticle(Article Article){

        return articleMapper.insertSelective(Article);
    }

    @Override
    public int updateArticle(Article Article){
        return articleMapper.updateByPrimaryKeyWithBLOBs(Article);
    }

    @Override
    public Article getArticleByID(int id){
        return articleMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteArticleByID(int id){

        return articleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Article selectArticleByID(int id){

        return articleMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Article> getArticleByType(String type){

        return articleMapper.getArticleByType(type);
    }
}
