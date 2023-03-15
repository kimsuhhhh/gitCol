package com.spring.member;

import javax.inject.Inject;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.MemberVO;
import com.spring.service.MemberService;
//import com.spring.service.MemberServiceImpl;

//회원관리 작업

@Controller
public class MemberController {
	@Inject
	MemberService memberService;
	
	@RequestMapping("/member/list") //접근은 /member/list
	public String memberList(Model model) {
		//서비스를 이용해서 작업
		List<MemberVO> list = memberService.memberList(); //데이터베이스 조회
		model.addAttribute("list", list);  //결과를 list로 전달
		
		return "member/member_list"; //연결페이지 member/member_list.jsp
	}
	
	//member_list에서 member/write값을 받았을 때 등록페이지로 이동
	//단지 페이지 이동만 할거면 메서드(인수없음)
	//값을 받거나 전달이 필요하면 메서드(인수 .....)
	@RequestMapping("/member/write")
	public String memberWrite() {
		return "member/member_write";
	}
	//member_write에서 submit을 클릭했을 때 member/insert값으로 처리
	//form으로 전달된 경우 @Model방식으로 저장, 일반변수는 @Parameter방식으로 개별변수 
	@RequestMapping("/member/insert")
	public String memberWrite(@ModelAttribute MemberVO vo) {
		//저장작업
		memberService.insertMember(vo); //서비스에 insertMember를 이용해서 저장
		
		return "redirect:/member/list"; //redirect는 페이지가 아니고 메서드 위치
	}
	
	//목록에서 이름을 클릭했을 때
	@RequestMapping("/member/view")
	public String memberView() {
		//해당 id에 레코드를 읽어오는 작업
		
		return "member/member_view"; //상세페이지로 이동
	}
	//상세페이지에서 수정버튼을 클릭했을 때
	@RequestMapping("member/update")
	public String memberUpdate() {
		//수정된 내용을 저장하는 작업
		
		return "redirect:/member/list"; //목록페이지로 이동
	}
}
