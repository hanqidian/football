package foot.ball.service;

import java.util.List;

import foot.ball.bean.News;

public interface NewsService extends Service<News,String>{

	public News getByNewsId(String newsId);
	
	public List<News> getImportantByNewsTime(String newsTime);
	
	public List<News> getByNewsProperty();
	
	public News getTheMostImportantNews();
	
	public List<News> getImportantNews();
	
	public List<News> getAllNews();
	
	public List<News> getByNewsType(String newsType);
	
}
