package foot.ball.mapper;

import java.util.List;

import foot.ball.bean.Gif;

public interface GifMapper extends Dao<Gif,String>{

	public List<Gif> getByGameId(String gameId);
	
}
