package action;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import model.Code;

public class PrintAction {
	Code cold;
	private String code;

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
		System.out.println(code);
		cold = new Code();
		cold.setContent(code);
		
		cold.setCodeStatus("unsaved");
		
		if (!cold.SaveToFile()) {
			System.err.println("save file error");
			return "fail";
		}

		cold.setCodeStatus("saved");
		
		if (!cold.compile()) {
			System.err.println("failed to compile code");
			return "fail";
		}

		cold.setCodeStatus("compiled");
		
		if (!cold.Run()) {
			System.err.println("run time error");
			return "fail";
		}
		
		return "runCodeSuccess";
	}

}
