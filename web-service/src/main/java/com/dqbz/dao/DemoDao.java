package com.dqbz.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @author Gao Zhengyuan
 * @create 2017-06-15-15:42
 */
public interface DemoDao {

	String getName(@Param("id") String id);
}
