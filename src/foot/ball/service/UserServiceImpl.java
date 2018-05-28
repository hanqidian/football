package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.User;
import foot.ball.mapper.UserMapper;

public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	public boolean add(User t) {
		return userMapper.add(t);
	}

	public void delete(String id) {
		userMapper.delete(id);
	}

	public List<User> getAll() {
		return userMapper.getAll();
	}

	public User getById(String id) {
		return userMapper.getById(id);
	}

	public void update(User t) {
		userMapper.update(t);
	}

	public List<User> getByUserName(String userName) {
		return userMapper.getByUserName(userName);
	}

	public List<User> getByUserNameAndPassword(String userName, String password) {
		return userMapper.getByUserNameAndPassword(userName,password);
	}

	public List<User> getByWarnCount() {
		return userMapper.getByWarnCount();
	}

	public List<User> getByUserType() {
		return userMapper.getByUserType();
	}

	public void lockByUserId(String userId) {
		userMapper.lockByUserId(userId);
	}

	public void deblockByUserId(String userId) {
		userMapper.deblockByUserId(userId);
	}

}
