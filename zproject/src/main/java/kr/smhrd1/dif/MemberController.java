package kr.smhrd1.dif;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd1.domain.Member;
import kr.smhrd1.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping("/")
	public String main() {
		return "index";
	}
	
	@RequestMapping("/login.do")
	public String Login(Member vo, HttpSession session) {
		Member mvo = service.login(vo);
		if(mvo != null) {
			session.setAttribute("mvo", mvo);
			System.out.println(mvo);
		}
		return "redirect:/";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping("/memberJoin.do")
	public String memberJoin(Member vo) {
		System.out.println("실행" + vo);
		service.memberJoin(vo);
		return "redirect:/";
	}
	
	@RequestMapping("/joinUs.do")
	public String boardForm() {
		return "join"; 
	}
}
