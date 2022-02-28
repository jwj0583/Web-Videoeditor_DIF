package kr.smhrd1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd1.domain.Member;
import kr.smhrd1.mapper.MemberMapper;

@Service
public class MemberService {
	@Autowired
	MemberMapper mapper;
	
	public Member login(Member vo) {
		Member mvo = mapper.login(vo);
		return mvo;
	}
	
	public void memberJoin(Member vo) {
		System.out.println("실행" );
		mapper.memberJoin(vo);
	}
}
