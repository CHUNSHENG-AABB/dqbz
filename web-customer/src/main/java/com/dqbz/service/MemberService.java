package com.dqbz.service;

import com.dqbz.model.Member;

import java.util.List;

/**
 * 会员单位
 * Created by lynn on 2017/7/23.
 */
public interface MemberService {

    List<Member> getAllMembers();

    Member getMemberById(Integer id);
}
