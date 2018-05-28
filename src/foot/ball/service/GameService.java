package foot.ball.service;

import java.util.List;

import foot.ball.bean.Game;

public interface GameService extends Service<Game,String>{

	public List<Game> getImportantGame();
	
	public void updateGameState(Game game);
	
	public List<Game> getByGameType(String gameType);
	
}
