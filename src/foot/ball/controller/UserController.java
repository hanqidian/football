package foot.ball.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import foot.ball.bean.User;
import foot.ball.service.UserService;
import foot.ball.util.UUIDUtil;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	//跳转注册页面
	@RequestMapping("/user/toRegister.do")
	public ModelAndView toRegister(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/register");
		return mav;
	}
	
	//注册
	@RequestMapping("/user/register.do")
	public ModelAndView register(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String userId = UUIDUtil.getUUID();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String userType = "C";
		int count = userService.getByUserName(userName).size();
		int warnCount = 0;
		if(count != 0){
			request.getSession().setAttribute("tishi2", "该用户名已被注册！");
			mav.setViewName("user/register");
		}else{
			User user = new User(userId,userName,password,userType,warnCount);
			userService.add(user);
			mav.setViewName("user/login");
		}
		return mav;
	}
	
	//跳转登录页面
	@RequestMapping("/user/toLogin.do")
	public ModelAndView toLogin(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}
	
	//登录
	@RequestMapping("/user/login.do")
	public void login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		//转码，防止数据库查询时获取中文关键字为乱码导致查不到结果
		//String userName = new String(request.getParameter("userName").getBytes("iso-8859-1"),"utf-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		List userList = userService.getByUserNameAndPassword(userName, password);
		if(userList.size()==1){
			User user = (User) userList.get(0);
			if(user.getUserType().equals("A")){
				request.getSession().setAttribute("userName", "用户管理员："+user.getUserName());
				//request.getRequestDispatcher("/WEB-INF/jsp/manager/userManager.jsp").forward(request, response);
				request.getRequestDispatcher("/user/getAll.do").forward(request, response);
			}else if(user.getUserType().equals("B")){
				request.getSession().setAttribute("userName", "新闻管理员："+user.getUserName());
				//request.getRequestDispatcher("/WEB-INF/jsp/manager/newsManager.jsp").forward(request, response);
				request.getRequestDispatcher("/news/getAll.do").forward(request, response);
			}else if(user.getUserType().equals("C")){
				request.getSession().setAttribute("userName", "欢迎您："+user.getUserName());
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}else if(user.getUserType().equals("F")){
				request.getSession().setAttribute("userName","俱乐部管理员:"+user.getUserName());
				request.getRequestDispatcher("/club/listZg.do").forward(request, response);
			}else if(user.getUserType().equals("G")){
				request.getSession().setAttribute("userName","赛事管理员:"+user.getUserName());
				request.getRequestDispatcher("/game/getAll.do").forward(request, response);
			}else if(user.getUserType().equals("D")){
				request.getSession().setAttribute("userName",user.getUserName());
				request.getRequestDispatcher("/WEB-INF/jsp/user/dead.jsp").forward(request, response);
			}else{
				request.getSession().setAttribute("userName",user.getUserName());
				request.getRequestDispatcher("/WEB-INF/jsp/user/waiting.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("tishi", "用户名或密码错误，登录失败");
			request.getRequestDispatcher("/WEB-INF/jsp/user/login.jsp").forward(request, response);
		}
	}
	
	//查看所有用户信息(不包括管理员)
	@RequestMapping("user/getAll.do")
	public ModelAndView getAll(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<User> list = userService.getAll();
		List<User> userList = new ArrayList();
		//将用户状态由字母格式转化为汉字格式(C:使用中 D:锁死 E:请求解锁)
		for(int i=0;i<list.size();i++){
			User user = new User();
			if(list.get(i).getUserType().equals("C")){
				user.setUserType("使用中");
			}else if(list.get(i).getUserType().equals("D")){
				user.setUserType("已锁死");
			}else if(list.get(i).getUserType().equals("E")){
				user.setUserType("请求解锁");
			}
			user.setUserId(list.get(i).getUserId());
			user.setUserName(list.get(i).getUserName());
			user.setPassword(list.get(i).getPassword());
			user.setWarnCount(list.get(i).getWarnCount());
			userList.add(user);
		}
		request.setAttribute("userList", userList);
		mav.setViewName("manager/userManager");
		return mav;
	}
	
	//跳转到锁死页面
	@RequestMapping("user/toLock.do")
	public ModelAndView toLock(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.setAttribute("userList", userService.getByWarnCount());
		mav.setViewName("manager/userLock");
		return mav;
	}
	
	//跳转到解锁页面
	@RequestMapping("user/toDeblock.do")
	public ModelAndView toDeblock(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.setAttribute("userList", userService.getByUserType());
		mav.setViewName("manager/userDeblock");
		return mav;
	}
	
	//锁死操作
	@RequestMapping("user/lock.do")
	public String lock(HttpServletRequest request){
		String userId = request.getParameter("userId");
		userService.lockByUserId(userId);
		request.setAttribute("userList", userService.getByWarnCount());
		//获取跳转前的页面的URL
		String url = request.getHeader("REFERER").replace("http://localhost:8080/football", "");
		if(url.equals("/user/login.do")){
			url = "/user/getAll.do";
		}
		return "redirect:"+url;
	}
	
	//解锁操作
	@RequestMapping("user/deblock.do")
	public String deblock(HttpServletRequest request){
		String userId = request.getParameter("userId");
		userService.deblockByUserId(userId);
		request.setAttribute("userList", userService.getByUserType());
		String url = request.getHeader("REFERER").replace("http://localhost:8080/football", "");
		if(url.equals("/user/login.do")){
			url = "/user/getAll.do";
		}
		return "redirect:"+url;
	}
	
	//删除操作
	@RequestMapping("user/delete.do")
	public String delete(HttpServletRequest request){
		String userId = request.getParameter("userId");
		userService.delete(userId);
		String url = request.getHeader("REFERER").replace("http://localhost:8080/football", "");
		if(url.equals("/user/login.do")){
			url = "/user/getAll.do";
		}
		return "redirect:"+url;
	}
	
	//申请解锁
	@RequestMapping("user/wantDeblock.do")
	public ModelAndView wantDeblock(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<User> list = userService.getByUserName(request.getParameter("userName"));
		User user = list.get(0); 
		user.setUserType("E");
		userService.update(user);
		request.getSession().setAttribute("userName", request.getParameter("userName"));
		mav.setViewName("user/waiting");
		return mav;
	}
	
	/*//关于我们页面
	@RequestMapping("/user/aboutUs.do")
	public ModelAndView aboutUs(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("aboutUs/aboutUs");
		return mav;
	}
	
	//文章页面
	@RequestMapping("/user/articles.do")
	public ModelAndView artilces(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("articles/articles");
		return mav;
	}*/
	
}
