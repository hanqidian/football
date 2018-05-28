package foot.ball.mapper;

import java.util.List;

public interface Dao <T,ID>{

	public boolean add(T t);
	public void delete(ID id);
	public void update(T t);
	
	public T getById(ID id);
	public List<T> getAll();
	
}
