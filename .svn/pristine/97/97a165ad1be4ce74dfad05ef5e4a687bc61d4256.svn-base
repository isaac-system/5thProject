package team3.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team3.service.RecService;
import team3.vo.Member;

@Controller
public class RecController {
	@Autowired(required = false)
	private RecService service;
	
	// http://localhost:7080/5th_project/recommend.do
	@RequestMapping("recommend.do")
	public String recommend() {
		return "WEB-INF\\views\\recommend.jsp";
	}
	@RequestMapping("memRec.do")
	public String memRec(HttpServletRequest req, Model d) {
		HttpSession session = req.getSession();
		Member m = (Member)session.getAttribute("loginMember");
		d.addAttribute("glist", service.memRec(m));
		return "WEB-INF\\views\\gRecList.jsp";
	}
	@RequestMapping("revRec.do")
	public String revRec(HttpServletRequest req, Model d) {
		HttpSession session = req.getSession();
		Member m = (Member)session.getAttribute("loginMember");
		d.addAttribute("glist", service.revRec(m));
		return "WEB-INF\\views\\gRecList.jsp";
	}
	@RequestMapping("listByStars.do")
	public String listByStars(Model d) {
		d.addAttribute("glist", service.listByStars());
		return "WEB-INF\\views\\gRecList.jsp";
	}
	@RequestMapping("guitarDetail.do")
	public String guitarDetail(@RequestParam("gid") String gid, Model d) {
		d.addAttribute("guitarid", gid);
		d.addAttribute("guitar", service.getGuitar(gid));
		d.addAttribute("seller", service.getSeller(gid));
		return "WEB-INF\\views\\guitarDetail.jsp";
	}
	@RequestMapping("guitarReview.do")
	public String guitarReview(@RequestParam("guitarid") String guitarid, Model d) {
		d.addAttribute("reviewList", service.getGuitarReview(guitarid));
		return "WEB-INF\\views\\rList.jsp";
	}
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String referer = req.getHeader("Referer");
		String[] url = referer.split("/");
		System.out.println(referer);
		session.removeAttribute("loginMember");
		return "redirect:" + url[4];
	}
	@RequestMapping("mainRec.do")
	public String mainRec(Model d) {
		d.addAttribute("glist", service.mainRec());
		return "WEB-INF\\views\\mainRec.jsp";
	}
}
