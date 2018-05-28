package foot.ball.bean;

public class Game {

	private String gameId;
	private String homeTeam;
	private String guestTeam;
	private String goal;
	private String fumble;
	private String gameType;	
	private String gameState;	//比赛状态: A:未开赛 B:上半场 C:中场 D:下半场 E:已结束
	private String gameTime;
	
	public Game(){}
	public Game(String gameId, String homeTeam, String guestTeam, String goal,
			String fumble, String gameType, String gameState, String gameTime) {
		this.gameId = gameId;
		this.homeTeam = homeTeam;
		this.guestTeam = guestTeam;
		this.goal = goal;
		this.fumble = fumble;
		this.gameType = gameType;
		this.gameState = gameState;
		this.gameTime = gameTime;
	}
	
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	public String getHomeTeam() {
		return homeTeam;
	}
	public void setHomeTeam(String homeTeam) {
		this.homeTeam = homeTeam;
	}
	public String getGuestTeam() {
		return guestTeam;
	}
	public void setGuestTeam(String guestTeam) {
		this.guestTeam = guestTeam;
	}
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public String getFumble() {
		return fumble;
	}
	public void setFumble(String fumble) {
		this.fumble = fumble;
	}
	public String getGameType() {
		return gameType;
	}
	public void setGameType(String gameType) {
		this.gameType = gameType;
	}
	public String getGameState() {
		return gameState;
	}
	public void setGameState(String gameState) {
		this.gameState = gameState;
	}
	public String getGameTime() {
		return gameTime;
	}
	public void setGameTime(String gameTime) {
		this.gameTime = gameTime;
	}
	
}
