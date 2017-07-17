package com.dqbz.service;

import com.dqbz.model.Activity;
import com.dqbz.model.Article;

/**
 * @author Gao Zhengyuan
 * @create 2017-06-15-17:08
 */
public interface DemoService {

	Article getName(Integer id);

	Activity getAllActivity();
}
