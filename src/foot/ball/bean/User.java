package foot.ball.bean;

public class User {

	private String userId;		//用户ID
	private String userName;	//用户名
	private String password;	//密码
	private String userType;	//用户类型(A:用户管理员 B:信息管理员 C:普通用户 D:锁死)
	private int warnCount;	    //被举报次数
	
	public User(String userId, String userName, String password, String userType,int warnCount) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.userType = userType;
		this.warnCount = warnCount;
	}
	
	public User(){}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public int getWarnCount() {
		return warnCount;
	}
	public void setWarnCount(int warnCount) {
		this.warnCount = warnCount;
	}
	
}
