package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.Game;
import foot.ball.mapper.GameMapper;

public class GameServiceImpl implements GameService{

	@Autowired
	public GameMapper gameMapper;
	
	public boolean add(Game t) {
		return gameMapper.add(t);
	}

	public void delete(String id) {
		gameMapper.delete(id);
	}

	public List<Game> getAll() {
		return gameMapper.getAll();
	}

	public Game getById(String id) {
		return gameMapper.getById(id);
	}

	public void update(Game t) {
		gameMapper.update(t);
	}

	public List<Game> getImportantGame() {
		return gameMapper.getImportantGame();
	}

	public void updateGameState(Game game) {
		gameMapper.updateGameState(game);
	}

	public List<Game> getByGameType(String gameType) {
		return gameMapper.getByGameType(gameType);
	}

}
