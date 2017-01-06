package action;

import java.util.ArrayList;
import java.util.Map;

import tools.FileInter;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoadFiles extends ActionSupport {

	private static final long serialVersionUID = 6016237926432124034L;
	ArrayList<String> files;
	ArrayList<String> filenames;
	
	public ArrayList<String> getFiles() {
		return files;
	}
	
	public ArrayList<String> getFilenames() {
		return filenames;
	}

	public String loadfiles() throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> session = ActionContext.getContext().getSession();
		FileInter fi = new FileInter();
		String dir = (String) session.get("dir");
		files = fi.getAllFiles(dir);
		
		System.err.println("in loadfiles --- " + dir);
		filenames = new ArrayList<>();
		
		for (int i = 0; i < files.size(); i++) {
			int j = files.get(i).length()-1;
			while(files.get(i).charAt(j) != fi.getSeperator()) j--;
			filenames.add(files.get(i).substring(j+1));
			System.out.println(files.get(i) + " --- " + filenames.get(i));
		}
		
		
		return "success";
	}

}
