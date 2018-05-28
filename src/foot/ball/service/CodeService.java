package foot.ball.service;

import java.util.List;

import foot.ball.bean.Code;

public interface CodeService extends Service<Code,String>{

	public List<Code> getByCodeType(String codeType);
	
	public String getByCodeTypeAndCodeKey(String codeType,String codeKey);
	
}
