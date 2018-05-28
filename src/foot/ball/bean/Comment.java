package foot.ball.bean;

public class Comment {

	private String commentId;
	private String newsId;
	private String commentTime;
	private String commentText;
	private String commentWriter;
	private int readCount;
	
	public Comment(){}
	public Comment(String commentId, String newsId, String commentTime,
			String commentText, String commentWriter, int readCount) {
		this.commentId = commentId;
		this.newsId = newsId;
		this.commentTime = commentTime;
		this.commentText = commentText;
		this.commentWriter = commentWriter;
		this.readCount = readCount;
	}
	
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public String getNewsId() {
		return newsId;
	}
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public String getCommentWriter() {
		return commentWriter;
	}
	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
}
