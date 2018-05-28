package foot.ball.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import foot.ball.bean.Comment;
import foot.ball.bean.Game;
import foot.ball.bean.News;
import foot.ball.bean.User;
import foot.ball.service.CommentService;
import foot.ball.service.GameService;
import foot.ball.service.NewsService;
import foot.ball.service.UserService;
import foot.ball.util.DateFormatUtil;
import foot.ball.util.UUIDUtil;

@Controller
public class NewsController {

	@Autowired
	public NewsService newsService;
	
	@Autowired
	public GameService gameService;
	
	@Autowired
	public CommentService commentService;
	
	@Autowired
	public UserService userService;
	
	//进入新闻管理页面显示列表
	@RequestMapping("news/getAll.do")
	public ModelAndView getAll(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<News> list = newsService.getAll();
		List<News> newsList = new ArrayList();
		for(int i=0;i<list.size();i++){
			News news = list.get(i);
			if(news.getNewsType().equals("China")){
				news.setNewsType("中国足球");
			}else if(news.getNewsType().equals("Laliga")){
				news.setNewsType("西甲");
			}else if(news.getNewsType().equals("Bundesliga")){
				news.setNewsType("德甲");
			}else if(news.getNewsType().equals("Serie")){
				news.setNewsType("意甲");
			}else if(news.getNewsType().equals("Ligue")){
				news.setNewsType("法甲");
			}else if(news.getNewsType().equals("EPL")){
				news.setNewsType("英超");
			}else if(news.getNewsType().equals("WorldWide")){
				news.setNewsType("国际足球");
			}
			if(news.getNewsProperty().equals("A")){
				news.setNewsProperty("置顶");
			}else if(news.getNewsProperty().equals("B")){
				news.setNewsProperty("非置顶");
			}
			newsList.add(news);
		}
		request.setAttribute("newsList", newsList);
		mav.setViewName("manager/newsManager");
		return mav;
	}
	
	//进入添加新闻页面
	@RequestMapping("news/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager/addNews");
		return mav;
	}
	
	//添加新闻操作
	@RequestMapping("news/add.do")
	public String add(HttpServletRequest request,MultipartFile pictureFile) throws IllegalStateException, IOException{
		if(pictureFile!=null){
			//图片上传成功后，将图片地址写到数据库
			String filePath = "E:\\picture\\football\\newsPic\\";
			//得到上传图片的原始名称
			String originalFileName = pictureFile.getOriginalFilename();
			//图片重命名
			String pictureId = UUIDUtil.getUUID();
			//String newFileName = pictureId+originalFileName.substring(originalFileName.lastIndexOf("."));
			String newFileName = pictureId+".jpg";
			News news = new News();
			//添加新闻到数据库
			news.setNewsId(UUIDUtil.getUUID());
			news.setNewsTitle(request.getParameter("newsTitle"));
			news.setNewsContent(request.getParameter("newsContent"));
			news.setNewsProperty(request.getParameter("newsProperty"));
			news.setNewsType(request.getParameter("newsType"));
			news.setNewsWriter(request.getParameter("newsWriter"));
			news.setPictureId(pictureId);
			news.setNewsTime(DateFormatUtil.getDateAndTime());
			news.setReadCount(0);
			newsService.add(news);
			//新文件
			File file = new File(filePath+newFileName);
			//将内存中的文件写入磁盘
			pictureFile.transferTo(file);
		}
		return "redirect:/news/getAll.do";
	}
	
	//管理员查看新闻
	@RequestMapping("news/toLook.do")
	public ModelAndView toLook(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		News news = newsService.getByNewsId(request.getParameter("newsId"));
		request.setAttribute("news",news);
		mav.setViewName("manager/lookNews");
		return mav;
	}
	
	//删除新闻
	@RequestMapping("news/delete.do")
	public String delete(HttpServletRequest request){
		newsService.delete(request.getParameter("newsId"));
		return "redirect:/news/getAll.do";
	}
	
	//进入首页显示内容
	@RequestMapping("toIndex.do")
	public String toIndex(HttpServletRequest request){
		//提取滚屏图片(置顶新闻的插图)
		List<News> newsList1 = newsService.getByNewsProperty();
		request.getSession().setAttribute("newsList1", newsList1);
		//置顶新闻
		News news = newsService.getTheMostImportantNews();
		request.getSession().setAttribute("news", news);
		//今日赛事
		List<Game> list = gameService.getImportantGame();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getGameState().equals("A")){
				list.get(i).setGameState("未开赛");
			}else if(list.get(i).getGameState().equals("B")){
				list.get(i).setGameState("上半场");
			}else if(list.get(i).getGameState().equals("C")){
				list.get(i).setGameState("中场");
			}else if(list.get(i).getGameState().equals("D")){
				list.get(i).setGameState("下半场");
			}else{
				list.get(i).setGameState("已结束");
			}
		}
		request.getSession().setAttribute("gameList", list);
		//今日头条
		List<News> newsList2 = newsService.getImportantNews();
		request.getSession().setAttribute("newsList2", newsList2);
		//昨日今天
		String date = "%"+DateFormatUtil.getDate()+"%";
		System.out.println("=============="+date);
		List<News> newsList3 = newsService.getImportantByNewsTime(date);
		request.getSession().setAttribute("newsList3", newsList3);
		return "redirect:index.jsp";
	}
	
	//普通用户查看新闻
	@RequestMapping("news/look.do")
	public ModelAndView look(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.setAttribute("news", newsService.getByNewsId(request.getParameter("newsId")));
		List<Comment> list = commentService.getByNewsId(request.getParameter("newsId"));
		request.getSession().setAttribute("commentList", list);
		mav.setViewName("news/news");
		return mav;
	}
	
	//发表评论
	@RequestMapping("news/addComment.do")
	public String addComment(HttpServletRequest request){
		String commentId = UUIDUtil.getUUID();
		String newsId = request.getParameter("newsId");
		String commentTime = DateFormatUtil.getDateAndTime();
		String commentText = request.getParameter("commentText");
		String commentWriter = request.getParameter("commentWriter");
		int readCount = 0;
		if(commentWriter.equals("")){
			request.getSession().setAttribute("tishi3", "请登录后再发表评论!");
		}else{
			Comment comment = new Comment(commentId,newsId,commentTime,commentText,commentWriter.replace("欢迎您：", ""),readCount);
			commentService.add(comment);
		}
		return "redirect:/news/look.do?newsId="+request.getParameter("newsId");
	}
	
	//点赞操作
	@RequestMapping("news/likeNews.do")
	public String Zc(HttpServletRequest request){
		String newsId = request.getParameter("newsId");
		News news = newsService.getByNewsId(newsId);
		news.setReadCount(news.getReadCount()+1);
		newsService.update(news);
		return "redirect:/news/look.do?newsId="+request.getParameter("newsId");
	}
	
	//进入新闻列表页
	@RequestMapping("news/listNews.do")
	public ModelAndView listNews(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.setAttribute("newsList", newsService.getAllNews());
		mav.setViewName("news/listNews");
		return mav;
	}
	
	//进入中国足球新闻列表
	@RequestMapping("news/listZg.do")
	public ModelAndView listZg(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("China"));
		mav.setViewName("news/listNews");
		return mav;
	}
	
	//进入西甲新闻列表
	@RequestMapping("news/listXj.do")
	public ModelAndView listXj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("Laliga"));
		mav.setViewName("news/listNews");
		return mav;
	}
	
	//进入德甲新闻列表
	@RequestMapping("news/listDj.do")
	public ModelAndView listDj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("Bundesliga"));
		mav.setViewName("news/listNews");
		return mav;
	}
	
	//进入意甲新闻列表
	@RequestMapping("news/listYj.do")
	public ModelAndView listYj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("Serie"));
		mav.setViewName("news/listNews");
		return mav;
	}

	//进入法甲新闻列表
	@RequestMapping("news/listFj.do")
	public ModelAndView listFj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("Ligue"));
		mav.setViewName("news/listNews");
		return mav;
	}

	//进入英超新闻列表
	@RequestMapping("news/listYc.do")
	public ModelAndView listYc(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("EPL"));
		mav.setViewName("news/listNews");
		return mav;
	}
	
	//进入国际足球新闻列表
	@RequestMapping("news/listGj.do")
	public ModelAndView listGj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("newsList", newsService.getByNewsType("WorldWide"));
		mav.setViewName("news/listNews");
		return mav;
	}
	
	//举报
	@RequestMapping("news/jb.do")
	public String jb(HttpServletRequest request){
		String commentWriter = request.getParameter("commentWriter");
		User user = userService.getByUserName(commentWriter).get(0);
		int warnCount = user.getWarnCount()+1;
		user.setWarnCount(warnCount);
		userService.update(user);
		return "redirect:/news/look.do?newsId="+request.getParameter("newsId");
	}
	
	//点赞
	@RequestMapping("news/dz.do")
	public String dz(HttpServletRequest request){
		Comment comment = commentService.getById(request.getParameter("commentId"));
		int readCount = comment.getReadCount()+1;
		comment.setReadCount(readCount);
		commentService.update(comment);
		return "redirect:/news/look.do?newsId="+request.getParameter("newsId");
	}
	
}
