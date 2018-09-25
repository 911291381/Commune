package cn.com.kaituo.ishield.util;

import java.io.File;

public class TmpFileUtil {
    public static final File tmpDir = new File(System.getProperty("java.io.tmpdir"), "iShield");
    
    static {
        if (!tmpDir.exists()) {
            tmpDir.mkdirs();
        }
    }
}
