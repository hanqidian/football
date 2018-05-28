package foot.ball.service;

import java.util.List;

import foot.ball.bean.Comment;

public interface CommentService extends Service<Comment,String>{

	public List<Comment> getByNewsId(String newsId);
	
}
