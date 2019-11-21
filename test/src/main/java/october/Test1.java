/*
package october;

import java.io.BufferedReader;
import java.io.InputStreamReader;

*/
/**
 * @program: java-study-demos
 * @description:
 * @author: 谢庆香
 * @create: 2019-10-12 09:09
 **//*

public class Test1 {
    static String fromStr = Constant.PROJECT_NAME;

    static String toStr = Constant.PROJECT_NAME + "_";
    static String[] ENCODE_FILES = { "^.*\\.java$", "^.*\\.c$", "^.*\\.h$", //
            "^.*\\.cpp$", "^.*\\.chm$", "^.*\\.ppt$", "^.*\\.pdf$", };
    static String[] EXCLUDE_FOLDERS = { "^\\.svn$" };

    public static void main(String[] args) throws Exception {

        File fromFile = new File(fromStr);
        copy(fromFile);
    }

    static void copy(File file) throws Exception {
        if (file.isDirectory()) {
            File[] files = getSubFile(file);
            for (File f : files) {
                copy(f);
            }
            if (files.length == 0) {
                String fromAbs = file.getAbsolutePath();
                String toAbs = fromAbs.replace(fromStr, toStr);
                File toFile = new File(toAbs);
                if (!toFile.exists()) {
                    toFile.mkdirs();
                }
            }
        } else {
            String fromAbs = file.getAbsolutePath();
            System.out.println(fromAbs);
            String toAbs = fromAbs.replace(fromStr, toStr);
            boolean isChange = false;
            for (String reg : ENCODE_FILES) {
                if (toAbs.toLowerCase().matches(reg)) {
                    isChange = true;
                    break;
                }
            }
            if (isChange) {
                toAbs = toAbs + "_";
            }
            System.out.println(toAbs);
            File toFile = new File(toAbs);
            if (!toFile.getParentFile().exists()) {
                toFile.getParentFile().mkdirs();
            }
            // "cmd /c copy  Test.c Test.txt"
            String cmd1 = "cmd /c copy " + fromAbs + " " + toAbs;
            Runtime runtime = Runtime.getRuntime();
            Process process = runtime.exec(cmd1);
            println(process.getInputStream());
        }
    }

    static void println(InputStream input) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(input, "gbk"));
        String line = null;
        while ((line = br.readLine()) != null) {
            System.out.println(line);
        }
        input.close();
    }

    static File[] getSubFile(File file) {
        return file.listFiles(new FileFilter() {
            public boolean accept(File pathname) {
                boolean ret = true;
                if (pathname.isDirectory()) {
                    for (String reg : EXCLUDE_FOLDERS) {
                        if (pathname.getName().toLowerCase().matches(reg)) {
                            ret = false;
                            break;
                        }
                    }
                }
                return ret;
            }
        });
    }
}
}*/
