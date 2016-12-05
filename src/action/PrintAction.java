package action;

public class PrintAction {
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String printcode()
	{
		System.out.println(code);
		return "SUCCESS";
	}
}
