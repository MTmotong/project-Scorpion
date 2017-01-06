package model;

import java.util.ArrayList;

import tools.FileInter;

public class Workdir {
	private String dir;
	private String path;
	private ArrayList<String> files;
	public Workdir(String dir, String path) {
		super();
		FileInter fi = new FileInter();
		this.dir = dir;
		this.path = path;
		this.files = fi.getAllFiles(path+dir);
	}
	
	
	
	
	
	
	
	
	
	
}
