package foot.ball.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import foot.ball.bean.Club;
import foot.ball.service.ClubService;
import foot.ball.util.UUIDUtil;

@Controller
public class ClubController {

	@Autowired
	public ClubService clubService;
	
	//显示所有中超俱乐部
	@RequestMapping("/club/listZg.do")
	public ModelAndView listZg(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("clubList", clubService.getByClubType("China"));
		mav.setViewName("manager/clubManager");
		return mav;
	}
	
	//显示所有西甲俱乐部
	@RequestMapping("/club/listXj.do")
	public ModelAndView listXj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("clubList", clubService.getByClubType("Laliga"));
		mav.setViewName("manager/clubManager");
		return mav;
	}
	
	//显示所有德甲俱乐部
	@RequestMapping("/club/listDj.do")
	public ModelAndView listDj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("clubList", clubService.getByClubType("Bundesliga"));
		mav.setViewName("manager/clubManager");
		return mav;
	}
	
	//显示所有意甲俱乐部
	@RequestMapping("/club/listYj.do")
	public ModelAndView listYj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("clubList", clubService.getByClubType("Serie"));
		mav.setViewName("manager/clubManager");
		return mav;
	}
	
	//显示所有法甲俱乐部
	@RequestMapping("/club/listFj.do")
	public ModelAndView listFj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("clubList", clubService.getByClubType("Ligue"));
		mav.setViewName("manager/clubManager");
		return mav;
	}
	
	//显示所有英超俱乐部
	@RequestMapping("/club/listYc.do")
	public ModelAndView listYc(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("clubList", clubService.getByClubType("EPL"));
		mav.setViewName("manager/clubManager");
		return mav;
	}
	
	//跳转到添加页面
	@RequestMapping("/club/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager/addClub");
		return mav;
	}
	
	//添加俱乐部
	@RequestMapping("/club/add.do")
	public String add(HttpServletRequest request){
		String clubId = UUIDUtil.getUUID();
		String clubName = request.getParameter("clubName");
		int clubWin = Integer.valueOf(request.getParameter("clubWin"));
		int clubTie = Integer.valueOf(request.getParameter("clubTie"));
		int clubLose = Integer.valueOf(request.getParameter("clubLose"));
		int gameCount = clubWin+clubTie+clubLose;
		int clubGoal = Integer.valueOf(request.getParameter("clubGoal"));
		int clubFumble = Integer.valueOf(request.getParameter("clubFumble"));
		int clubScore = 3*clubWin+clubTie;
		String clubType = request.getParameter("clubType");
		Club club = new Club(clubId,clubName,clubType,clubWin,clubTie,clubLose,clubGoal,clubFumble,clubScore,gameCount);
		clubService.add(club);
		return "redirect:/club/listZg.do";
	}
	
	//跳转至更新数据页面
	@RequestMapping("club/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("club", clubService.getByClubId(request.getParameter("clubId")));
		mav.setViewName("manager/updateClub");
		return mav;
	}
	
	//更新数据
	@RequestMapping("club/update.do")
	public String update(HttpServletRequest request){
		Club club = clubService.getByClubId(request.getParameter("clubId"));
		int clubWin = Integer.valueOf(request.getParameter("clubWin"));
		int clubTie = Integer.valueOf(request.getParameter("clubTie"));
		int clubLose = Integer.valueOf(request.getParameter("clubLose"));
		int clubGoal = Integer.valueOf(request.getParameter("clubGoal"));
		int clubFumble = Integer.valueOf(request.getParameter("clubFumble"));
		int gameCount = clubWin+clubTie+clubLose;
		int clubScore = clubWin*3+clubTie;
		club.setClubWin(clubWin);
		club.setClubTie(clubTie);
		club.setClubLose(clubLose);
		club.setClubGoal(clubGoal);
		club.setClubFumble(clubFumble);
		club.setClubScore(clubScore);
		club.setGameCount(gameCount);
		clubService.update(club);
		if(club.getClubType().equals("China")){
			return "redirect:/club/listZg.do";
		}else if(club.getClubType().equals("Laliga")){
			return "redirect:/club/listXj.do";
		}else if(club.getClubType().equals("Bundesliga")){
			return "redirect:/club/listDj.do";
		}else if(club.getClubType().equals("Serie")){
			return "redirect:/club/listYj.do";
		}else if(club.getClubType().equals("Ligue")){
			return "redirect:/club/listFj.do";
		}else{
			return "redirect:/club/listYc.do";
		}
	}
	
	//删除操作
	@RequestMapping("club/delete.do")
	public String delete(HttpServletRequest request){
		String clubType = clubService.getByClubId(request.getParameter("clubId")).getClubType();
		clubService.delete(request.getParameter("clubId"));
		if(clubType.equals("China")){
			return "redirect:/club/listZg.do";
		}else if(clubType.equals("Laliga")){
			return "redirect:/club/listXj.do";
		}else if(clubType.equals("Bundesliga")){
			return "redirect:/club/listDj.do";
		}else if(clubType.equals("Serie")){
			return "redirect:/club/listYj.do";
		}else if(clubType.equals("Ligue")){
			return "redirect:/club/listFj.do";
		}else{
			return "redirect:/club/listYc.do";
		}
	}
	
	//普通用户跳转到数据页（默认显示中超数据）
	@RequestMapping("/player/listGoal.do")
	public ModelAndView listGoal(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("list",clubService.getByClubType("China"));
		mav.setViewName("player/listGoal");
		return mav;
	}
	
	//普通用户显示西甲数据
	@RequestMapping("/player/listXj.do")
	public ModelAndView listXj2(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("list",clubService.getByClubType("Laliga"));
		mav.setViewName("player/listGoal");
		return mav;
	}
	
	
	//普通用户显示德甲数据
	@RequestMapping("/player/listDj.do")
	public ModelAndView listDj2(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("list",clubService.getByClubType("Bundesliga"));
		mav.setViewName("player/listGoal");
		return mav;
	}
	
	//普通用户显示意甲数据
	@RequestMapping("/player/listYj.do")
	public ModelAndView listYj2(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("list",clubService.getByClubType("Serie"));
		mav.setViewName("player/listGoal");
		return mav;
	}
	
	//普通用户显示法甲数据
	@RequestMapping("/player/listFj.do")
	public ModelAndView listFj2(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("list",clubService.getByClubType("Ligue"));
		mav.setViewName("player/listGoal");
		return mav;
	}

	//普通用户显示英超数据
	@RequestMapping("/player/listYc.do")
	public ModelAndView listYc2(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("list",clubService.getByClubType("EPL"));
		mav.setViewName("player/listGoal");
		return mav;
	}
	
}
