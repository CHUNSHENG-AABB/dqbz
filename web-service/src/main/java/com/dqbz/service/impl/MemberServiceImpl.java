package com.dqbz.service.impl;

import com.dqbz.dao.MemberMapper;
import com.dqbz.model.Member;
import com.dqbz.model.MemberWithBLOBs;
import com.dqbz.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public int insertMember(MemberWithBLOBs member){
        return memberMapper.insertSelective(member);
    }

    @Override
    public MemberWithBLOBs getMember(int id){

        return memberMapper.selectByPrimaryKey(id);
    }

    @Override
    public Integer saveMember(Member member){

        return memberMapper.updateByPrimaryKeyWithBLOBs(member);
    }

    @Override
    public List<Member> selectAllMember(){

        return memberMapper.selectAllMember();
    }

    @Override
    public int deleteMemberByID(int id){
        return memberMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateMember(MemberWithBLOBs member){
        return memberMapper.updateByPrimaryKeySelective(member);
    }
}
