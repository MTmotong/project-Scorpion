package tools;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class linuxWriteFile {
	public static void Main() throws IOException {
		File file = new File("~/Desktop/tmpcode/tmp.cpp");
		if (!file.exists()) {
			file.createNewFile();
		}
	}
}
