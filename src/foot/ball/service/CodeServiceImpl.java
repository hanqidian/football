package foot.ball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import foot.ball.bean.Code;
import foot.ball.mapper.CodeMapper;

public class CodeServiceImpl implements CodeService{

	@Autowired
	public CodeMapper codeMapper;
	
	public List<Code> getByCodeType(String codeType) {
		return codeMapper.getByCodeType(codeType);
	}

	public String getByCodeTypeAndCodeKey(String codeType, String codeKey) {
		return codeMapper.getByCodeTypeAndCodeKey(codeType, codeKey);
	}

	public boolean add(Code t) {
		return codeMapper.add(t);
	}

	public void delete(String id) {
		codeMapper.delete(id);
	}

	public List<Code> getAll() {
		return codeMapper.getAll();
	}

	public Code getById(String id) {
		return codeMapper.getById(id);
	}

	public void update(Code t) {
		codeMapper.update(t);
	}

}
