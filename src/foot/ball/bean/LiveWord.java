package foot.ball.bean;

public class LiveWord {

	private String liveId;
	private String gameId;
	private String liveTime;
	private String liveWord;
	
	public LiveWord(){}
	public LiveWord(String liveId, String gameId, String liveTime,
			String liveWord) {
		this.liveId = liveId;
		this.gameId = gameId;
		this.liveTime = liveTime;
		this.liveWord = liveWord;
	}
	
	public String getLiveId() {
		return liveId;
	}
	public void setLiveId(String liveId) {
		this.liveId = liveId;
	}
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	public String getLiveTime() {
		return liveTime;
	}
	public void setLiveTime(String liveTime) {
		this.liveTime = liveTime;
	}
	public String getLiveWord() {
		return liveWord;
	}
	public void setLiveWord(String liveWord) {
		this.liveWord = liveWord;
	}
	
}
