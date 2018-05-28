package foot.ball.bean;

public class Code {

	private String codeId;
	private String codeType;
	private String codeKey;
	private String codeValue;
	
	public Code(){}
	public Code(String codeId, String codeType, String codeKey, String codeValue) {
		this.codeId = codeId;
		this.codeType = codeType;
		this.codeKey = codeKey;
		this.codeValue = codeValue;
	}
	
	public String getCodeId() {
		return codeId;
	}
	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}
	public String getCodeType() {
		return codeType;
	}
	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}
	public String getCodeKey() {
		return codeKey;
	}
	public void setCodeKey(String codeKey) {
		this.codeKey = codeKey;
	}
	public String getCodeValue() {
		return codeValue;
	}
	public void setCodeValue(String codeValue) {
		this.codeValue = codeValue;
	}
	
}
