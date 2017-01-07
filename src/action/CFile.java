package action;

import java.util.Map;

import tools.FileInter;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CFile extends ActionSupport {
	private static final long serialVersionUID = 6278548168007281102L;

	private String fileName;
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String openFile() throws Exception {

		FileInter fi = new FileInter();
		Map<String, Object> session = ActionContext.getContext().getSession();

		fileName = (String) session.get("dir") + fi.getSeperator() + fileName;

		System.err.println("in open file:" + fileName);

		if (session.containsKey("file"))
			session.remove("file");
		session.put("file", fileName);
		code = fi.readFile(fileName);

		return "success";
	}

	public String saveFile() throws Exception {

		FileInter fi = new FileInter();
		Map<String, Object> session = ActionContext.getContext().getSession();

		fileName = (String) session.get("dir") + fi.getSeperator() + fileName;

		System.err.println("in save file:" + fileName);
		
		fi.writeFile(code, fileName);

		return "success";
	}
	public String delFile() throws Exception {

		FileInter fi = new FileInter();
		Map<String, Object> session = ActionContext.getContext().getSession();

		fileName = (String) session.get("dir") + fi.getSeperator() + fileName;

		System.out.println("in del file:" + fileName);
		fi.delFile(fileName);
		return "success";
	}
}
