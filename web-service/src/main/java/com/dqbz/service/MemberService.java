package com.dqbz.service;

import com.dqbz.model.Member;
import com.dqbz.model.MemberWithBLOBs;

import java.util.List;

/**
 * Created by o on 2017/7/23.
 */
public interface MemberService {

	int insertMember(MemberWithBLOBs member);

	MemberWithBLOBs getMember(int id);

	Integer saveMember(Member member);

	List<Member> selectAllMember();

	int deleteMemberByID(int id);

	int updateMember(MemberWithBLOBs member);
}
