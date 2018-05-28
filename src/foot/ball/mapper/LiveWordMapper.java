package foot.ball.mapper;

import java.util.List;

import foot.ball.bean.LiveWord;

public interface LiveWordMapper extends Dao<LiveWord,String>{

	public List<LiveWord> getByGameId(String gameId);
	
}
