package foot.ball.service;

import java.util.List;

import foot.ball.bean.User;

public interface UserService extends Service<User,String>{

	public List<User> getByUserName(String userName);
	
	public List<User> getByUserNameAndPassword(String userName,String password);

	public List<User> getByWarnCount();
	
	public List<User> getByUserType();
	
	public void lockByUserId(String userId);
	
	public void deblockByUserId(String userId);
	
}
