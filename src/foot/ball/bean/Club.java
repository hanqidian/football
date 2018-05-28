package foot.ball.bean;

public class Club {

	private String clubId;
	private String clubName;
	private String clubType;
	private int clubWin;
	private int clubTie;
	private int clubLose;
	private int clubGoal;
	private int clubFumble;
	private int clubScore;
	private int gameCount;
	
	public Club(){}
	
	public Club(String clubId, String clubName, String clubType, int clubWin,
			int clubTie, int clubLose, int clubGoal, int clubFumble,
			int clubScore,int gameCount) {
		this.clubId = clubId;
		this.clubName = clubName;
		this.clubType = clubType;
		this.clubWin = clubWin;
		this.clubTie = clubTie;
		this.clubLose = clubLose;
		this.clubGoal = clubGoal;
		this.clubFumble = clubFumble;
		this.clubScore = clubScore;
		this.gameCount = gameCount;
	}

	public String getClubId() {
		return clubId;
	}

	public void setClubId(String clubId) {
		this.clubId = clubId;
	}

	public String getClubName() {
		return clubName;
	}

	public void setClubName(String clubName) {
		this.clubName = clubName;
	}

	public String getClubType() {
		return clubType;
	}

	public void setClubType(String clubType) {
		this.clubType = clubType;
	}

	public int getClubWin() {
		return clubWin;
	}

	public void setClubWin(int clubWin) {
		this.clubWin = clubWin;
	}

	public int getClubTie() {
		return clubTie;
	}

	public void setClubTie(int clubTie) {
		this.clubTie = clubTie;
	}

	public int getClubLose() {
		return clubLose;
	}

	public void setClubLose(int clubLose) {
		this.clubLose = clubLose;
	}

	public int getClubGoal() {
		return clubGoal;
	}

	public void setClubGoal(int clubGoal) {
		this.clubGoal = clubGoal;
	}

	public int getClubFumble() {
		return clubFumble;
	}

	public void setClubFumble(int clubFumble) {
		this.clubFumble = clubFumble;
	}

	public int getClubScore() {
		return clubScore;
	}

	public void setClubScore(int clubScore) {
		this.clubScore = clubScore;
	}

	public int getGameCount() {
		return gameCount;
	}

	public void setGameCount(int gameCount) {
		this.gameCount = gameCount;
	}
	
}
