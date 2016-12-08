package action;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;

import com.opensymphony.xwork2.Action;

public class TestRunTime implements Action {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		System.out.println("testRunTime");

//		String cmd = "cmd /c dir";
		String cmd = "cmd /c g++ -o d:\\tmpcode\\a.exe d:\\tmpcode\\tmp.cpp";
		Runtime runtime = Runtime.getRuntime();

		try {
			Process pro = runtime.exec(cmd);
			BufferedInputStream in = new BufferedInputStream(
					pro.getErrorStream());
			BufferedReader inBr = new BufferedReader(new InputStreamReader(in));
			String str;
			while ((str = inBr.readLine()) != null) {
				System.out.println(str);
			}
			if (pro.waitFor() != 0) {
				if (pro.exitValue() == 1)
					System.err.println("failed");
			}
			inBr.close();
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}
}
