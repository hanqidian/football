package foot.ball.service;

import java.util.List;

import foot.ball.bean.Club;

public interface ClubService extends Service<Club,String>{

	public List<Club> getByClubType(String clubType);
	
	public Club getByClubId(String clubId);
	
}
