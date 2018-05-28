package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.Comment;
import foot.ball.mapper.CommentMapper;

public class CommentServiceImpl implements CommentService{

	@Autowired
	public CommentMapper commentMapper;
	
	public boolean add(Comment t) {
		return commentMapper.add(t);
	}

	public void delete(String id) {
		commentMapper.delete(id);
		
	}

	public List<Comment> getAll() {
		return commentMapper.getAll();
	}

	public Comment getById(String id) {
		return commentMapper.getById(id);
	}

	public void update(Comment t) {
		commentMapper.update(t);
	}

	public List<Comment> getByNewsId(String newsId) {
		return commentMapper.getByNewsId(newsId);
	}

}
