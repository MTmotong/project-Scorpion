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
	private String os;
	private String path;

	public boolean isWindows() {
		if (os.startsWith("Win") || os.startsWith("win"))
			return true;
		return false;
	}

	public Code() {
		super();
		// get runtime operating system name
		os = System.getProperties().getProperty("os.name");
		if (os.startsWith("win") || os.startsWith("Win")) {
			path = "d:\\tmpcode\\";
		} else {
			path = "/home/hitacm/Desktop/tmpcode/";
		}

	}

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
		System.out.println("input = " + input);
		fi.writeFile(content, path + "tmp.cpp");
		fi.writeFile(input, path + "tmp.in");
		return true;
	}

	public Boolean compile() throws IOException {
		Runtime runtime = Runtime.getRuntime();
		String[] cmd = new String[3];

		if (isWindows()) {
			cmd[0] = "cmd";
			cmd[1] = "/c";
		} else {
			cmd[0] = "/bin/sh";
			cmd[1] = "-c";
		}
		cmd[2] = String.format("g++ -o %sa.exe %stmp.cpp", path, path);

		this.setCompiled(0);
		try {
			File compileMsg = new File(path + "compileMsg.txt");
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
		
		System.out.println("here");
		
		FileInter fi = new FileInter();
		this.setCompileMsg(fi.readFile(path+"compileMsg.txt"));
		if (this.getCompiled() == 1) {
			return true;
		}
		else {
			this.setOutput(compileMsg);
			System.out.println(output);
			return false;
		}
	}
	/*
	public boolean compileShell() throws IOException {
		Runtime runtime = Runtime.getRuntime();
		String[] cmd = { "/bin/sh", "-c",
				String.format("g++ -o %sa.exe %stmp.cpp", path, path) };

		System.out.println(cmd[0]);
		System.out.println(cmd[1]);
		System.out.println(cmd[2]);

		this.setCompiled(0);
		try {
			Process p = runtime.exec(cmd);
			p.waitFor();
			if (p.exitValue() == 1) {
				this.setCompiled(0);
				p.destroy();
				System.err.println("compile error");
			} else {
				this.setCompiled(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("!!!!");
			return false;
		}
		FileInter fi = new FileInter();
		this.setCompileMsg(fi.readFile(String.format("%s%s", path,
				"compile.log")));
		if (this.getCompileMsg().length() == 0)
			this.setCompiled(1);
		else
			this.setCompiled(0);

		if (this.getCompiled() == 1)
			return true;
		else
			return false;
	}
	*/
	public Boolean Run() throws IOException {
		String[] cmd = new String[3];
		if (isWindows()) {
			cmd[0] = "cmd";
			cmd[1] = "/c";
			// String[] cmd = {"cmd", "/c",
			// "d:\\tmpcode\\a.exe < d:\\tmpcode\\tmp.in > d:\\tmpcode\\tmp.out"};
		} else {
			cmd[0] = "/bin/sh";
			cmd[1] = "-c";
		}
		cmd[2] = String.format("%sa.exe < %stmp.in > %stmp.out", path, path,
				path);

		Runtime runtime = Runtime.getRuntime();
		Process p = runtime.exec(cmd);
		try {
			System.out.println("before");
			// max execution time
			if (!p.waitFor(10, TimeUnit.SECONDS)) {
				p.destroy();
				if (isWindows()) {
					runtime.exec("taskkill /F /IM a.exe");
				} else {
					runtime.exec("killall a.exe");
				}

				// if (p.isAlive()) {
				this.setCodeStatus("TLE");
				this.setOutput("TLE");
				System.err.println("TLE");
				p.destroy();
				return true;
			} else {
				if (p.exitValue() != 0) {
					this.setCodeStatus("RE");
					this.setOutput("runtime error");
				} else {
					FileInter fi = new FileInter();
					this.setOutput(fi.readFile(path + "tmp.out"));
					this.setCodeStatus("exited");
				}
				return true;
			}

		} catch (InterruptedException e1) {
			System.out.println("RE");
			e1.printStackTrace();
		}

		return true;
	}
}
