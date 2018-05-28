package foot.ball.bean;

public class Gif {

	private String gifId;
	private String gifText;
	private String gifTime;
	private String gameId;
	
	public Gif(){}
	public Gif(String gifId, String gifText, String gifTime, String gameId) {
		super();
		this.gifId = gifId;
		this.gifText = gifText;
		this.gifTime = gifTime;
		this.gameId = gameId;
	}
	
	public String getGifId() {
		return gifId;
	}
	public void setGifId(String gifId) {
		this.gifId = gifId;
	}
	public String getGifText() {
		return gifText;
	}
	public void setGifText(String gifText) {
		this.gifText = gifText;
	}
	public String getGifTime() {
		return gifTime;
	}
	public void setGifTime(String gifTime) {
		this.gifTime = gifTime;
	}
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	
}
