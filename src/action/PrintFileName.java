package action;

public class PrintFileName {
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	private String filename;
	
	public String execute()
	{
		System.out.println("hello"+filename);
		return "success";
	}
	
}
