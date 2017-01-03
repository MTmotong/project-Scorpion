package test;

import com.opensymphony.xwork2.ActionSupport;

public class TryAjax extends ActionSupport {

	private static final long serialVersionUID = 7443363719737618408L;

	private String code;
	private String input;
	private String result;

	public String getCode() {
		return code;
	}

	public String getInput() {
		return input;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setInput(String input) {
		this.input = input;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		result = code + "----" + input;
		
		return SUCCESS;
	}

	public String getResult() {
		return result;
	}

}