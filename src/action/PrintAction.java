package action;

import java.io.IOException;



import com.opensymphony.xwork2.ActionSupport;

import model.Code;

public class PrintAction extends ActionSupport{

	private static final long serialVersionUID = 8860219269355126057L;
	Code cold;
	private String code;
	private String input;
	private String result;
	private String FontSize;
	private String Theme;
	public String getInput() {
		return input;
	}

	public void setInput(String input) {
		this.input = input;
	}

	public Code getCold() {
		return cold;
	}

	public void setCold(Code cold) {
		this.cold = cold;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String printcode() throws IOException, InterruptedException {

		System.err.println("input = " + input);
		System.err.println("code = " + code);		
		
		cold = new Code();
		cold.setContent(code);
		cold.setInput(input);
		cold.setCodeStatus("unsaved");

		if (!cold.SaveToFile()) {
			System.err.println("save file error");
			return "fail";
		}
		
		System.out.println("saved");
		
		cold.setCodeStatus("saved");

		if (!cold.compile()) {
			System.err.println("failed to compile code");
			return "fail";
		}
		
		System.out.println("compiled");
		cold.setCodeStatus("compiled");

		if (!cold.Run()) {
			System.err.println("run time error");
			return "fail";
		}
		setResult(cold.getOutput());
		
		System.out.println("here");
		
		return "success";
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getFontSize() {
		return FontSize;
	}

	public void setFontSize(String fontSize) {
		FontSize = fontSize;
	}

	public String getTheme() {
		return Theme;
	}

	public void setTheme(String theme) {
		Theme = theme;
	}

}
