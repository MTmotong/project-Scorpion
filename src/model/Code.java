package model;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

public class Code {
	// content : user's code
	private String content;
	// type : "c++"/"java"/"python"...
	private String type;
	private String input;
	private String output;

	public String getContent() {
		return content;
	}

	public String getType() {
		return type;
	}

	public String getInput() {
		return input;
	}

	public String getOutput() {
		return output;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setInput(String input) {
		this.input = input;
	}
	public void setOutput(String output) {
		this.output = output;
	}
	
	
	//save code and it's input into d:\\tmpcode\\tmp.cpp | tmp.in
	public Boolean SaveToFile() throws IOException {
		if (content == null) {
			System.err.println("empty code error");
			return false;
		}
		File codeFile = new File("d:\\tmpcode\\tmp.cpp");
		File inFile = new File("d:\\tmpcode\\tmp.in");
		if (!codeFile.exists()) {
			codeFile.createNewFile();
		}
		if (!inFile.exists()) {
			inFile.createNewFile();
		}
		FileWriter codeWriter = new FileWriter(codeFile);
		FileWriter inWriter = new FileWriter(inFile);

		if (this.content != null) {
			codeWriter.write(this.content);
		} else {
			codeWriter.write("");
		}

		if (this.input != null) {
			inWriter.write(this.input);
		} else {
			inWriter.write("");
		}
		codeWriter.flush();
		inWriter.flush();
		codeWriter.close();
		inWriter.close();
		return true;
	}
	public Boolean compile() {
		Runtime runtime = Runtime.getRuntime();
		String cmd = "cmd /c g++ -o d:\\tmpcode\\a.exe d:\\tmpcode\\tmp.cpp";
		try {
			File compileMsg = new File("d:\\tmpcode\\compileMsg.txt");
			if (!compileMsg.exists())
				compileMsg.createNewFile();
			
			FileWriter writer = new FileWriter(compileMsg);
			
			Process p = runtime.exec(cmd);
			BufferedInputStream in = new BufferedInputStream(
					p.getErrorStream());
			BufferedReader inBr = new BufferedReader(new InputStreamReader(in));
			String str;
			while ((str = inBr.readLine()) != null) {
				writer.write(str+"\n");
				
				System.out.println(str);
			}
			if (p.waitFor() != 0) {
				if (p.exitValue() == 1) {
					System.err.println("compile error");
					writer.flush();
					writer.close();
				}
			}
			inBr.close();
			in.close();
			writer.flush();
			writer.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public Boolean Run() throws IOException {
		
		String cmd = "cmd /c d:\\tmpcode\\a.exe < d:\\tmpcode\\tmp.in > d:\\tmpcode\\tmp.out";
		Runtime runtime = Runtime.getRuntime();
		
		runtime.exec(cmd);
		
		
		return true;
	}
}
