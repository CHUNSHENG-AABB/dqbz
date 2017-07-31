package com.dqbz.service;

import com.dqbz.model.Member;
import com.dqbz.model.MemberWithBLOBs;

/**
 * Created by o on 2017/7/23.
 */
public interface MemberService {

	int insertMember(MemberWithBLOBs member);

	Member getMember(int id);

	Integer saveMember(Member member);
}
