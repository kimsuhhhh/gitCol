package com.spring.service;

import java.util.List;

import com.spring.domain.MemberVO;

public interface MemberService {
	//사용할 메소드만 선언
	//목록(모든 자료를 읽어온다.)
	public List<MemberVO> memberList(); 
	//입력(레코드를 테이블에 저장)
	public void insertMember(MemberVO vo) ;
	//상세보기(해당자료의 레코드를 읽어온다.)
	public MemberVO viewMember(String userId);
	//수정(해당 레코드를 수정)
	public void updateMember(MemberVO vo);
	//삭제(해당 자료를 삭제
	public void deleteMember(String userId);
}
