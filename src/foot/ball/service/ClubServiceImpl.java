package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.Club;
import foot.ball.mapper.ClubMapper;

public class ClubServiceImpl implements ClubService{

	@Autowired
	public ClubMapper clubMapper;
	
	public boolean add(Club t) {
		return clubMapper.add(t);
	}

	public void delete(String id) {
		clubMapper.delete(id);
	}

	public List<Club> getAll() {
		return clubMapper.getAll();
	}

	public Club getById(String id) {
		return clubMapper.getById(id);
	}

	public void update(Club t) {
		clubMapper.update(t);
	}

	public List<Club> getByClubType(String clubType) {
		return clubMapper.getByClubType(clubType);
	}

	public Club getByClubId(String clubId) {
		return clubMapper.getByClubId(clubId);
	}

}
