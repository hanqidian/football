package foot.ball.mapper;

import java.util.List;

import foot.ball.bean.Club;

public interface ClubMapper extends Dao<Club,String>{

	public List<Club> getByClubType(String clubType);
	
	public Club getByClubId(String clubId);
	
}
