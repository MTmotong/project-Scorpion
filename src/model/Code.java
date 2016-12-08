package model;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.TimeUnit;

import tools.FileInter;

public class Code {
	// content : user's code
	private String content;
	// type : "c++"/"java"/"python"...
	private String type;
	private String input;
	private String output;
	private String compileMsg;
	private String codeStatus;

	public String getCodeStatus() {
		return codeStatus;
	}

	public void setCodeStatus(String codeStatus) {
		this.codeStatus = codeStatus;
	}

	public String getCompileMsg() {
		return compileMsg;
	}

	public void setCompileMsg(String compileMsg) {
		this.compileMsg = compileMsg;
	}

	private Integer compiled;

	public Integer getCompiled() {
		return compiled;
	}

	public void setCompiled(Integer compiled) {
		this.compiled = compiled;
	}

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

	// save code and it's input into d:\\tmpcode\\tmp.cpp | tmp.in
	public Boolean SaveToFile() throws IOException {
		if (content == null) {
			System.err.println("empty code error");
			return false;
		}

		FileInter fi = new FileInter();

		fi.writeFile(content, "d:\\tmpcode\\tmp.cpp");
		fi.writeFile(input, "d:\\tmpcode\\tmp.in");

		return true;
	}

	public Boolean compile() throws IOException {
		Runtime runtime = Runtime.getRuntime();
		String cmd = "cmd /c g++ -o d:\\tmpcode\\a.exe d:\\tmpcode\\tmp.cpp";
		this.setCompiled(0);
		try {
			File compileMsg = new File("d:\\tmpcode\\compileMsg.txt");
			if (!compileMsg.exists())
				compileMsg.createNewFile();

			FileWriter writer = new FileWriter(compileMsg);

			Process p = runtime.exec(cmd);
			BufferedInputStream in = new BufferedInputStream(p.getErrorStream());
			BufferedReader inBr = new BufferedReader(new InputStreamReader(in));
			String str;
			while ((str = inBr.readLine()) != null) {
				writer.write(str + "\n");
				System.out.println(str);
			}

			p.waitFor();
			if (p.exitValue() == 1) {
				this.setCompiled(0);
				p.destroy();
				System.err.println("compile error");
			} else {
				this.setCompiled(1);
			}
			inBr.close();
			in.close();
			writer.flush();
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("!!!!");
			return false;
		}

		FileInter fi = new FileInter();
		this.setCompileMsg(fi.readFile("d:\\tmpcode\\compileMsg.txt"));
		if (this.getCompiled() == 1)
			return true;
		else
			return false;
	}

	public Boolean Run() throws IOException {
		String cmd = "cmd /c d:\\tmpcode\\a.exe < d:\\tmpcode\\tmp.in > d:\\tmpcode\\tmp.out";
		Runtime runtime = Runtime.getRuntime();
		Process p = runtime.exec(cmd);

		try {

			System.out.println("before");
			
			// max execution time
			if (!p.waitFor(20, TimeUnit.SECONDS)) {
				p.destroy();

				runtime.exec("taskkill /F /IM a.exe");

				// if (p.isAlive()) {
				this.setCodeStatus("TLE");
				this.setOutput("");
				System.err.println("TLE");
				p.destroy();
				return true;
			} else {

				if (p.exitValue() != 0) {
					this.setCodeStatus("RE");
					this.setOutput("");
				} else {
					FileInter fi = new FileInter();
					this.setOutput(fi.readFile("d:\\tmpcode\\tmp.out"));
					this.setCodeStatus("exited");
				}
				return true;
			}

		} catch (InterruptedException e1) {
			// TODO Auto-generated catch block

			System.out.println("RE");

			e1.printStackTrace();
		}

		return true;

		/*
		 * 
		 * //p.waitFor(); if (p.isAlive()) { p.destroy(); this.setOutput("TLE");
		 * return true; }
		 * 
		 * try { p.waitFor(); } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * FileInter fi = new FileInter();
		 * this.setOutput(fi.readFile("d:\\tmpcode\\tmp.out"));
		 * System.out.println(this.getOutput()); return true;
		 */
	}
}
