package foot.ball.service;

import java.util.List;

import foot.ball.bean.LiveWord;

public interface LiveWordService extends Service<LiveWord,String>{
	
	public List<LiveWord> getByGameId(String gameId);
	
}
