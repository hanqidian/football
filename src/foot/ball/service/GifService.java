package foot.ball.service;

import java.util.List;

import foot.ball.bean.Gif;

public interface GifService extends Service<Gif,String>{

	public List<Gif> getByGameId(String gameId);
	
}
