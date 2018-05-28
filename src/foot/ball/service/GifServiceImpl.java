package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.Gif;
import foot.ball.mapper.GifMapper;

public class GifServiceImpl implements GifService{

	@Autowired
	public GifMapper gifMapper;
	
	public boolean add(Gif t) {
		return gifMapper.add(t);
	}

	public void delete(String id) {
		gifMapper.delete(id);
	}

	public List<Gif> getAll() {
		return gifMapper.getAll();
	}

	public Gif getById(String id) {
		return gifMapper.getById(id);
	}

	public void update(Gif t) {
		gifMapper.update(t);
	}

	public List<Gif> getByGameId(String gameId) {
		return gifMapper.getByGameId(gameId);
	}

}
