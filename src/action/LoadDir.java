package action;

import java.util.ArrayList;
import java.util.Map;

import tools.FileInter;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class LoadDir implements Action {

	private String dir;
	private String passwd;

	public String getDir() {
		return dir;
	}

	public void setDir(String dir) {
		this.dir = dir;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	@Override
	public String execute() throws Exception {

		System.out.println(dir);
		System.out.println(passwd);

		FileInter fi = new FileInter();

		String path;
		String os = System.getProperties().getProperty("os.name");

		if (os.startsWith("win") || os.startsWith("Win"))
			path = "d:\\tmpcode\\";
		else
			path = "/home/py/tmpcode/";

		ArrayList<String> dirs = fi.getAllDirs(path);
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		
		for (int i = 0; i < dirs.size(); i++) {
			
			System.out.println("dir: = " + dirs.get(i));
			
			if (dirs.get(i).endsWith(fi.getSeperator() + dir)) {
				
				
				String truekey = fi.readFile(dirs.get(i) + fi.getSeperator()
						+ "passwd");
//				System.out.println("[" + passwd+"]");
//				System.out.println("[" + truekey +"]");
				if (truekey.equals(passwd + "\n")) {
					// login ok
					
					if (session.containsKey("dir")) {
						session.replace("dir", dirs.get(i));
					} else {
						session.put("dir", dirs.get(i));
					}
					
					System.out.println("login ok");
					return "success";
				} else {
					// password wrong
					System.out.println("login fail");
					session.remove("dir");
					return "fail";
				}
			}
		}
		
		System.out.println("creat new dir");
		
		// new user , create directory
		String newdir = path + fi.getSeperator() + dir;
		fi.makeDir(newdir);
		fi.writeFile(passwd, newdir + fi.getSeperator() + "passwd");
		
		if (session.containsKey("dir")) {
			session.replace("dir", newdir);
		} else {
			session.put("dir", newdir);
		}
		
		return "success";
	}
}
