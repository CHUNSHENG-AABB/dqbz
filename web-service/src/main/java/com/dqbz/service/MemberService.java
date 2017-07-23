package com.dqbz.service;

import com.dqbz.model.Member;

/**
 * Created by o on 2017/7/23.
 */
public interface MemberService {

	Member getMember(int id);

	Integer saveMember(Member member);
}
