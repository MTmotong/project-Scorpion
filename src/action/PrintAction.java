package action;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import model.Code;

public class PrintAction {
	Code cold;
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String printcode() throws IOException
	{
		System.out.println(code);
/*		if(!saveToFile(code)) {
			System.err.println("save to file failed!!");
			return "fail";
		}
		
		if (!compileFile()) {
			System.err.println("compile file failed!!");
			return "fail";
		}
		
		if (!runCode()) {
			System.out.println("run code error!!");
			return "fail";
		}
		*/
		
		cold = new Code();
		cold.setContent(code);
		if (!cold.SaveToFile()) {
			System.err.println("save file error");
			return "fail";
		}
		
		if (!cold.compile()) {
			System.err.println("failed to compile code");
			return "fail";
		}
		
		if (!cold.Run()) {
			System.err.println("run time error");
			return "fail";
		}
		
		return "printsuccess";
	}

/*	private boolean saveToFile(String code2) throws IOException {
		
		System.out.println("!!");
		
		File file = new File("d:\\tmpcode\\tmp.cpp");
		if (!file.exists()) {
			file.createNewFile();
		}
		System.out.println("!!!!!!");
		FileWriter writer = new FileWriter(file);
		
		writer.write(code2);
		writer.flush();
		writer.close();
		return true;
	}*/
}
