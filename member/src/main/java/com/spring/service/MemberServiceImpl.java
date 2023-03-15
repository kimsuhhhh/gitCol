package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.MemberDAO;
//import com.spring.dao.MemberDAOImpl;
import com.spring.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDao;
	//MemberDAO 오류생길때 MemberDAOImpl
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		// 주입한 내용을 확인해서 작업
		memberDao.insertMember(vo); //DAO에 insertMember를 이용해서 작업
	}

	@Override
	public MemberVO viewMember(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMember(String userId) {
		// TODO Auto-generated method stub

	}

}
