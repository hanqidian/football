package foot.ball.mapper;

import java.util.List;

import foot.ball.bean.News;

public interface NewsMapper extends Dao<News,String>{

	public News getByNewsId(String newsId);
	
	public List<News> getImportantByNewsTime(String newsTime);
	
	public List<News> getByNewsProperty();
	
	public News getTheMostImportantNews();
	
	public List<News> getImportantNews();
	
	public List<News> getAllNews();
	
	public List<News> getByNewsType(String newsType);
	
}
