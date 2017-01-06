package tools;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class FileInter {
	public String readFile(String fileName) throws IOException {
		StringBuilder sb = new StringBuilder();
		File file = new File(fileName);
		BufferedReader bf = new BufferedReader(new FileReader(file));
		String tmp = bf.readLine();
		while (tmp != null) {
			sb.append(tmp);
			sb.append('\n');
			tmp = bf.readLine();
		}
		bf.close();
		return sb.toString();
	}

	public boolean writeFile(String str, String fileName) throws IOException {
		File file = new File(fileName);

		if (!file.exists()) {
			file.createNewFile();
		}

		FileWriter writer = new FileWriter(file);

		if (str != null) {
			writer.write(str);
		} else {
			writer.write("");
		}

		writer.flush();
		writer.close();

		return true;
	}

	public boolean delFile(String fileName) {
		boolean ret = false;
		File file = new File(fileName);
		if (file.isFile() && file.exists()) {
			file.delete();
			ret = true;
		}
		return ret;
	}

	public boolean existFile(String fileName) {
		File file = new File(fileName);
		return file.isFile() && file.exists();
	}

	public char getSeperator() {
		String os = System.getProperties().getProperty("os.name");

		if (os.startsWith("win") || os.startsWith("Win"))
			return '\\';
		else
			return '/';

	}

	public ArrayList<String> getAllFiles(String path) {
		File file = new File(path);

		File[] tmp = file.listFiles();

		ArrayList<String> ret = new ArrayList<String>();

		for (int i = 0; i < tmp.length; i++) {
			if (tmp[i].isFile() && tmp[i].toString().endsWith(".cpp")) {
				ret.add(tmp[i].toString());
				// System.out.println(ret.get(ret.size()-1));
			}
		}

		return ret;
	}

	public ArrayList<String> getAllDirs(String path) {
		File file = new File(path);

		File[] tmp = file.listFiles();

		ArrayList<String> ret = new ArrayList<String>();

		for (int i = 0; i < tmp.length; i++) {
			if (tmp[i].isDirectory()) {
				ret.add(tmp[i].toString());
				// System.out.println(ret.get(ret.size()-1));
			}
		}

		return ret;
	}
	
	public void makeDir(String path) {
		File f = new File(path);
		f.mkdir();
	}
	
	
	public static void main(String[] args) {

		FileInter fi = new FileInter();
		ArrayList<String> r = fi.getAllDirs("c:\\");
		for (int i = 0; i < r.size(); i++) {
			System.out.println(r.get(i));
		}

	}

}
