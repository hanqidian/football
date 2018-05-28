package foot.ball.mapper;

import java.util.List;

import foot.ball.bean.Comment;

public interface CommentMapper extends Dao<Comment,String>{

	public List<Comment> getByNewsId(String newsId);
	
}
