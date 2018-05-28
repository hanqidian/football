package foot.ball.service;

import java.util.List;

public interface Service <T,ID>{

	public boolean add(T t);
	public void delete(ID id);
	public void update(T t);
	
	public T getById(ID id);
	public List<T> getAll();
	
}
