package action;

public class Hello {
	
	private String name;
	private String result;
	
	//ajax���������ֵ
	public void setName(String name) {
		this.name = name;
	}
	
	//ajax���ؽ��
	public String getResult() {
		return result;
	}
	
	public String execute() {
		this.result = "Hello!" + this.name + ".";
		return "success";
	}
}
