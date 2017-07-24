package com.dqbz.service.impl;

import com.dqbz.dao.MemberMapper;
import com.dqbz.model.Member;
import com.dqbz.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public int insertMember(Member member){
        return memberMapper.insertSelective(member);
    }

    @Override
    public Member getMember(int id){

        return memberMapper.selectByPrimaryKey(id);
    }

    @Override
    public Integer saveMember(Member member){

        return memberMapper.updateByPrimaryKeyWithBLOBs(member);
    }
}
