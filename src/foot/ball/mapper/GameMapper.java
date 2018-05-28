package foot.ball.mapper;

import java.util.List;

import foot.ball.bean.Game;

public interface GameMapper extends Dao<Game,String>{

	public List<Game> getImportantGame();
	
	public void updateGameState(Game game);
	
	public List<Game> getByGameType(String gameType);
	
}
