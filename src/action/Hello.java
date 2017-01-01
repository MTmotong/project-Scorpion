package action;

public class Hello {
	
	private String name;
	private String result;
	
	//ajax请求参数赋值
	public void setName(String name) {
		this.name = name;
	}
	
	//ajax返回结果
	public String getResult() {
		return result;
	}
	
	public String execute() {
		this.result = "Hello!" + this.name + ".";
		return "success";
	}
}
