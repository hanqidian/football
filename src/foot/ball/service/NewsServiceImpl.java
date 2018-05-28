package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.News;
import foot.ball.mapper.NewsMapper;

public class NewsServiceImpl implements NewsService{

	@Autowired
	public NewsMapper newsMapper;
	
	public boolean add(News t) {
		return newsMapper.add(t);
	}

	public void delete(String id) {
		newsMapper.delete(id);
	}

	public List<News> getAll() {
		return newsMapper.getAll();
	}

	public News getById(String id) {
		return newsMapper.getById(id);
	}

	public void update(News t) {
		newsMapper.update(t);
	}

	public News getByNewsId(String newsId) {
		return newsMapper.getByNewsId(newsId);
	}

	public List<News> getByNewsProperty() {
		return newsMapper.getByNewsProperty();
	}

	public List<News> getAllNews() {
		return newsMapper.getAllNews();
	}

	public List<News> getImportantNews() {
		return newsMapper.getImportantNews();
	}

	public News getTheMostImportantNews() {
		return newsMapper.getTheMostImportantNews();
	}

	public List<News> getByNewsType(String newsType) {
		return newsMapper.getByNewsType(newsType);
	}

	public List<News> getImportantByNewsTime(String newsTime) {
		return newsMapper.getImportantByNewsTime(newsTime);
	}

}
