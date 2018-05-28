package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.LiveWord;
import foot.ball.mapper.LiveWordMapper;

public class LiveWordServiceImpl implements LiveWordService{
	
	@Autowired
	public LiveWordMapper liveWordMapper;

	public boolean add(LiveWord t) {
		return liveWordMapper.add(t);
	}

	public void delete(String id) {
		liveWordMapper.delete(id);
		
	}

	public List<LiveWord> getAll() {
		return liveWordMapper.getAll();
	}

	public LiveWord getById(String id) {
		return liveWordMapper.getById(id);
	}

	public void update(LiveWord t) {
		liveWordMapper.update(t);
		
	}

	public List<LiveWord> getByGameId(String gameId) {
		return liveWordMapper.getByGameId(gameId);
	}

}
