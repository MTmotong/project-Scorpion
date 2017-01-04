package tools;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

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

}
