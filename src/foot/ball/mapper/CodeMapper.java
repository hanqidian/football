package foot.ball.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import foot.ball.bean.Code;

public interface CodeMapper extends Dao<Code,String>{

	public List<Code> getByCodeType(String codeType);
	
	public String getByCodeTypeAndCodeKey(@Param("codeType") String codeType,@Param("codeKey") String codeKey);
	
}
