package foot.ball.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ForumController {

	@RequestMapping("/forum/listForum.do")
	public ModelAndView listForum(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("forum/listForum");
		return mav;
	}
	
}
