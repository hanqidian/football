package foot.ball.bean;

public class News {

	private String newsId;			//新闻ID
	private String newsTitle;		//新闻标题
	private String newsContent;		//新闻内容
	private String newsTime;		//新闻发布时间
	private String newsWriter;		//作者
	private int readCount;			//点击次数
	private String pictureId;		//配图ID
	private String newsType;		//新闻类型(China:中国 Laliga:西甲 Bundesliga:德甲 Serie:意甲 Ligue:法甲 EPL:英超 WorldWide:国际)
	private String newsProperty;	//新闻性质{A:置顶 B:非置顶}
	
	public News(){};
	
	public News(String newsId, String newsTitle, String newsContent,
			String newsTime, String newsWriter, int readCount, String pictureId,String newsType,String newsProperty) {
		this.newsId = newsId;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsTime = newsTime;
		this.newsWriter = newsWriter;
		this.readCount = readCount;
		this.pictureId = pictureId;
		this.newsType = newsType;
		this.newsProperty = newsProperty;
	}
	
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsTime() {
		return newsTime;
	}
	public void setNewsTime(String newsTime) {
		this.newsTime = newsTime;
	}
	public String getNewsWriter() {
		return newsWriter;
	}
	public void setNewsWriter(String newsWriter) {
		this.newsWriter = newsWriter;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getPictureId() {
		return pictureId;
	}
	public void setPictureId(String pictureId) {
		this.pictureId = pictureId;
	}

	public String getNewsType() {
		return newsType;
	}

	public void setNewsType(String newType) {
		this.newsType = newType;
	}

	public String getNewsProperty() {
		return newsProperty;
	}

	public void setNewsProperty(String newsProperty) {
		this.newsProperty = newsProperty;
	}
	
}
