package com.dqbz.service.impl;

import com.dqbz.dao.MemberMapper;
import com.dqbz.model.Member;
import com.dqbz.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lynn on 2017/7/23.
 */
@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    MemberMapper memberMapper;


    @Override
    public List<Member> getAllMembers() {

        List<Member> members = memberMapper.getAllMembers();



        return members;
    }

    @Override
    public Member getMemberById(Integer id) {


        return memberMapper.selectByPrimaryKey(id);
    }


}
