package action;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import model.Code;

public class PrintAction {
	Code cold;
	private String code;
	private String input;
	private String result;
	private String erromsg;
	
	
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
	
	public String getErromsg() {
		return erromsg;
	}

	public void setErromsg(String erromsg) {
		this.erromsg = erromsg;
	}

	public String printcode() throws IOException, InterruptedException {
		cold = new Code();
		cold.clearFile();
		cold.setContent(code);
		cold.setInput(input);
		cold.setCodeStatus("unsaved");
		
		result = "";
		erromsg = "";
		
		// ok = 1
		// code status = ok
		boolean ok = true;
		
		
		// add file lock
		
		File file = new File(cold.getPath()+"lock");
		
		if (!file.exists()) {
			file.createNewFile();
		}
		
		RandomAccessFile out = new RandomAccessFile(file, "rw");
		FileChannel fcout = out.getChannel();
		FileLock flout = null;
		
		
		while(true) {
			flout = fcout.tryLock();
			
			if (flout != null) break;
			
			System.err.println("waiting other process to finish!!");
			
			Thread.sleep(300);
			
		}
		
		/*while(true) {
			try {
				flout = fcout.tryLock();
				break;
			} catch (Exception e) {
				System.err.println("waiting other process to finish!!");
				Thread.sleep(1000);
			}
		}*/
		
		
		
		if (!cold.SaveToFile()) {
			System.err.println("save file error");
			result = "save file error";
			ok = false;
		}

		cold.setCodeStatus("saved");
		
		if (ok) {
			if (!cold.isWindows()) {
				if (!cold.compileDocker()) {
					System.err.println("failed to compile in docker");
					result = "faild to compile code\n" + cold.getCompileMsg();
					ok = false;
				}
			}
			else {
				if (!cold.compile()) {
					System.err.println("failed to compile code");
					result = "faild to compile code\n" + cold.getCompileMsg();
					ok = false;
				}
			}
		}
		
		System.out.println("compiled");
		cold.setCodeStatus("compiled");
		if (ok) {
			if (!cold.isWindows()) {
				if (!cold.RunDocker()) {
					System.err.println("run time error");
					result = "run time error";
					ok = false;
				}
			} else {
				if (!cold.Run()) {
					System.err.println("run time error");
					result = "run time error";
					ok = false;
				}
			}
		}
		
		setResult(cold.getOutput());
		cold.clearFile();
		
		flout.release();
		fcout.close();
		out.close();
		out=null;
		
		if (ok) return "runCodeSuccess";
		else return "fail";
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
