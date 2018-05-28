package foot.ball.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import foot.ball.bean.Game;
import foot.ball.bean.Gif;
import foot.ball.bean.LiveWord;
import foot.ball.service.CodeService;
import foot.ball.service.GameService;
import foot.ball.service.GifService;
import foot.ball.service.LiveWordService;
import foot.ball.util.DateFormatUtil;
import foot.ball.util.UUIDUtil;

@Controller
public class GameController {

	@Autowired
	public GameService gameService;
	@Autowired
	public CodeService codeService;
	@Autowired
	public LiveWordService liveWordService;
	@Autowired
	public GifService gifService;
	
	//赛事管理员页面显示比赛列表
	@RequestMapping("/game/getAll.do")
	public ModelAndView getAll(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> gameList = gameService.getAll();
		for(int i=0;i<gameList.size();i++){
			gameList.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", gameList.get(i).getGameType()));
			gameList.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", gameList.get(i).getGameState()));
		}
		request.getSession().setAttribute("gameList", gameList);
		mav.setViewName("manager/gameManager");
		return mav;
	}
	
	//跳转至赛事添加页面
	@RequestMapping("/game/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("gameTypeList", codeService.getByCodeType("gameType"));
		mav.setViewName("manager/addGame");
		return mav;
	}
	
	//添加比赛
	@RequestMapping("/game/addGame.do")
	public String addGame(HttpServletRequest request){
		Game game = new Game();
		game.setGameId(UUIDUtil.getUUID());
		game.setHomeTeam(request.getParameter("homeTeam"));
		game.setGuestTeam(request.getParameter("guestTeam"));
		game.setFumble("0");
		game.setGoal("0");
		game.setGameState("A");
		game.setGameType(request.getParameter("gameType"));
		String gameTime = request.getParameter("year")+"-"+request.getParameter("month")+"-"+
			request.getParameter("day")+" "+request.getParameter("hour")+":"+request.getParameter("minute");
		game.setGameTime(gameTime);
		gameService.add(game);
		return "redirect:/game/getAll.do";
	}
	
	//跳转赛事更新页
	@RequestMapping("/game/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game.getGameState()));
		game.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game.getGameType()));
		request.getSession().setAttribute("game", game);
		mav.setViewName("manager/updateGame");
		return mav;
	}
	
	//修改赛事
	@RequestMapping("/game/updateGame.do")
	public String update(HttpServletRequest request){
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGoal(request.getParameter("goal"));
		game.setFumble(request.getParameter("fumble"));
		gameService.update(game);
		return "redirect:/game/getAll.do";
	}
	
	//删除比赛
	@RequestMapping("/game/delete.do")
	public String delete(HttpServletRequest request){
		gameService.delete(request.getParameter("gameId"));
		return "redirect:/game/getAll.do";
	}
	
	//管理员进入赛事直播页面
	@RequestMapping("/game/toLive.do")
	public ModelAndView toLive(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game.getGameType()));
		game.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game.getGameState()));
		request.getSession().setAttribute("game",game);
		mav.setViewName("manager/liveGame");
		return mav;
	}
	
	//比赛开始
	@RequestMapping("/game/ks.do")
	public ModelAndView ks(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameState("B");
		gameService.updateGameState(game);
		Game game1 = gameService.getById(request.getParameter("gameId"));
		game1.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game1.getGameType()));
		game1.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game1.getGameState()));
		request.getSession().setAttribute("game", game1);
		mav.setViewName("manager/liveGame");
		return mav;
	}
	
	//中场
	@RequestMapping("/game/zc.do")
	public ModelAndView zc(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameState("C");
		gameService.updateGameState(game);
		Game game1 = gameService.getById(request.getParameter("gameId"));
		game1.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game1.getGameType()));
		game1.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game1.getGameState()));
		request.getSession().setAttribute("game", game1);
		mav.setViewName("manager/liveGame");
		return mav;
	}
	
	//下半场
	@RequestMapping("/game/xbc.do")
	public ModelAndView xbc(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameState("D");
		gameService.updateGameState(game);
		Game game1 = gameService.getById(request.getParameter("gameId"));
		game1.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game1.getGameType()));
		game1.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game1.getGameState()));
		request.getSession().setAttribute("game", game1);
		mav.setViewName("manager/liveGame");
		return mav;
	}
	
	//结束
	@RequestMapping("/game/js.do")
	public String js(HttpServletRequest request){
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameState("E");
		gameService.updateGameState(game);
		request.getSession().setAttribute("game", gameService.getById(request.getParameter("gameId")));
		return "redirect:/game/getAll.do";
	}
	
	//进入图片直播
	@RequestMapping("/game/ft.do")
	public ModelAndView ft(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game.getGameType()));
		game.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game.getGameState()));
		request.getSession().setAttribute("game",game);
		mav.setViewName("manager/gifGame");
		return mav;
	}
	
	//文字直播
	@RequestMapping("/game/liveGame.do")
	public ModelAndView liveGame(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		LiveWord liveWord = new LiveWord();
		liveWord.setGameId(request.getParameter("gameId"));
		liveWord.setLiveId(UUIDUtil.getUUID());
		liveWord.setLiveTime(DateFormatUtil.getDateAndTime());
		liveWord.setLiveWord(request.getParameter("liveWord"));
		liveWordService.add(liveWord);
		mav.setViewName("manager/liveGame");
		return mav;
	}
	
	//图片直播
	@RequestMapping("/game/gifGame.do")
	public String gifGame(HttpServletRequest request,MultipartFile gifFile) throws IllegalStateException, IOException{
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game.getGameType()));
		game.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game.getGameState()));
		request.getSession().setAttribute("game",game);
		if(gifFile!=null){
			//gif图上传成功后，将gif地址写到数据库
			String filePath = "E:\\picture\\football\\liveGif\\";
			//得到上传gif的原始名称
			String originalFileName = gifFile.getOriginalFilename();
			//gif重命名
			String gifId = UUIDUtil.getUUID();
			String newFileName = gifId+".gif";
			Gif gif = new Gif();
			gif.setGameId(request.getParameter("gameId"));
			gif.setGifId(gifId);
			gif.setGifText(request.getParameter("gifText"));
			gif.setGifTime(DateFormatUtil.getDateAndTime());
			gifService.add(gif);
			//新文件
			File file = new File(filePath+newFileName);
			//将内存中的文件写入磁盘
			gifFile.transferTo(file);
		}
		return "redirect:/game/ft.do?gameId="+request.getParameter("gameId");
	}
	
	//普通用户进入直播页面
	@RequestMapping("/game/look.do")
	public ModelAndView look(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		//获取赛事信息
		Game game = gameService.getById(request.getParameter("gameId"));
		game.setGameState(codeService.getByCodeTypeAndCodeKey("gameState", game.getGameState()));
		game.setGameType(codeService.getByCodeTypeAndCodeKey("gameType", game.getGameType()));
		request.getSession().setAttribute("game",game);
		//获取文字直播内容
		List<LiveWord> liveWordList = liveWordService.getByGameId(request.getParameter("gameId"));
		request.getSession().setAttribute("liveWordList", liveWordList);
		//获取gif直播内容
		List<Gif> gifList = gifService.getByGameId(request.getParameter("gameId"));
		request.getSession().setAttribute("gifList", gifList);
		mav.setViewName("game/lookGame");
		return mav;
	}
	
	//普通用户进入更多赛事页
	@RequestMapping("/game/gameList.do")
	public ModelAndView gameList(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getAll();
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
	//显示中超赛事
	@RequestMapping("/game/zg.do")
	public ModelAndView zg(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getByGameType("China");
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
	//显示西甲赛事
	@RequestMapping("/game/xj.do")
	public ModelAndView xj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getByGameType("Laliga");
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
	//显德甲赛事
	@RequestMapping("/game/dj.do")
	public ModelAndView dj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getByGameType("Bundesliga");
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
	//显示意甲赛事
	@RequestMapping("/game/yj.do")
	public ModelAndView yj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getByGameType("Serie");
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
	//显示法甲赛事
	@RequestMapping("/game/fj.do")
	public ModelAndView fj(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getByGameType("Ligue");
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
	//显示英超赛事
	@RequestMapping("/game/yc.do")
	public ModelAndView yc(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<Game> list = gameService.getByGameType("EPL");
		for(int i=0;i<list.size();i++){
			list.get(i).setGameState(codeService.getByCodeTypeAndCodeKey("gameState", list.get(i).getGameState()));
			list.get(i).setGameType(codeService.getByCodeTypeAndCodeKey("gameType", list.get(i).getGameType()));
		}
		request.getSession().setAttribute("gameList", list);
		mav.setViewName("game/gameList");
		return mav;
	}
	
}
