package foot.ball.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import foot.ball.bean.User;

public interface UserMapper extends Dao<User,String>{

	public List<User> getByUserName(String userName);

	public List<User> getByUserNameAndPassword(@Param("userName")String userName, @Param("password")String password);

	public List<User> getByWarnCount();
	
	public List<User> getByUserType();
	
	public void lockByUserId(String userId);
	
	public void deblockByUserId(String userId);
	
}
