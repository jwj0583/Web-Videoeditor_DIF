package kr.smhrd1.mapper;

import kr.smhrd1.domain.Member;

public interface MemberMapper {
	public Member login(Member vo);
	
	public void memberJoin(Member vo);
}
 