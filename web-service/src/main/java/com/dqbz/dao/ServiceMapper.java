package com.dqbz.dao;

import com.dqbz.model.Service;

public interface ServiceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    int insert(Service record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    int insertSelective(Service record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    Service selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Service record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    int updateByPrimaryKeyWithBLOBs(Service record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table service
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Service record);
}